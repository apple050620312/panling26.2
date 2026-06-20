import os
import re

directories = [
    r'c:\panling26.2\data\pld\function\system',
    r'c:\panling26.2\data\pld\function\test',
    r'c:\panling26.2\data\pld\function\thanks',
    r'c:\panling26.2\data\pld\function\trigger',
    r'c:\panling26.2\data\pld\function\weapon_unlock',
    r'c:\panling26.2\data\pld\function\armor_unlock'
]

def process_tag_content(tag_str):
    components = []
    
    cmd_match = re.search(r'CustomModelData:\s*(\d+)', tag_str)
    if cmd_match:
        components.append(f'"minecraft:custom_model_data":{cmd_match.group(1)}')
        tag_str = tag_str.replace(cmd_match.group(0), '')
        
    unb_match = re.search(r'Unbreakable:\s*1b?', tag_str)
    if unb_match:
        components.append(f'"minecraft:unbreakable":{{}}')
        tag_str = tag_str.replace(unb_match.group(0), '')
        
    hf_match = re.search(r'HideFlags:\s*(\d+)', tag_str)
    if hf_match:
        components.append(f'"minecraft:hide_additional_tooltip":{{}}')
        tag_str = tag_str.replace(hf_match.group(0), '')
        
    def extract_balanced(s, start_pattern, open_char='{', close_char='}'):
        match = re.search(start_pattern, s)
        if not match: return None, s
        
        start_idx = match.end() - 1
        if s[start_idx] != open_char: return None, s
        
        stack = 0
        end_idx = -1
        for j in range(start_idx, len(s)):
            if s[j] == open_char: stack += 1
            elif s[j] == close_char:
                stack -= 1
                if stack == 0:
                    end_idx = j
                    break
                    
        if end_idx != -1:
            full_match = s[match.start():end_idx+1]
            inner_content = s[start_idx+1:end_idx]
            s_without = s.replace(full_match, '')
            return inner_content, s_without
        return None, s

    disp_inner, tag_str = extract_balanced(tag_str, r'display:\s*\{', '{', '}')
    if disp_inner:
        name_inner, disp_inner = extract_balanced(disp_inner, r'Name:\s*\'', "'", "'")
        if not name_inner:
            name_inner, disp_inner = extract_balanced(disp_inner, r'Name:\s*"', '"', '"')
        if name_inner is not None:
            if '{"translate' in name_inner:
                components.append(f'"minecraft:custom_name":\'' + name_inner + '\'')
            else:
                components.append(f'"minecraft:custom_name":"' + name_inner + '"')
                
        lore_inner, disp_inner = extract_balanced(disp_inner, r'Lore:\s*\[', '[', ']')
        if lore_inner is not None:
            components.append(f'"minecraft:lore":[' + lore_inner + ']')
            
        color_match = re.search(r'color:\s*(\d+)', disp_inner)
        if color_match:
            components.append(f'"minecraft:dyed_color":{{rgb:{color_match.group(1)}}}')
            
    ench_inner, tag_str = extract_balanced(tag_str, r'Enchantments:\s*\[', '[', ']')
    if ench_inner:
        enchs = re.findall(r'\{id:"([^"]+)",lvl:(\d+)s?\}', ench_inner)
        if not enchs:
            enchs = re.findall(r'\{id:([^,]+),lvl:(\d+)s?\}', ench_inner)
        if enchs:
            levels = []
            for eid, lvl in enchs:
                eid = eid.replace("minecraft:", "").replace('"', '').strip()
                levels.append(f'"{eid}":{lvl}')
            components.append(f'"minecraft:enchantments":{{levels:{{{",".join(levels)}}}}}')

    tag_str = re.sub(r',\s*,', ',', tag_str).strip().strip(',')
    
    if tag_str:
        components.append(f'"minecraft:custom_data":{{{tag_str}}}')
        
    return ",".join(components)

def replace_tags(line):
    line = re.sub(
        r'nbt=\{Item:\{id:"(?P<id>[^"]+)",tag:\{(?P<tag>[^}]+)\}\}\}',
        r'nbt={Item:{id:"\g<id>",components:{"minecraft:custom_data":{\g<tag>}}}}',
        line
    )
    line = re.sub(
        r'nbt=\{Item:\{tag:\{(?P<tag>[^}]+)\}\}\}',
        r'nbt={Item:{components:{"minecraft:custom_data":{\g<tag>}}}}',
        line
    )

    result = []
    i = 0
    while i < len(line):
        if line[i:i+4] == 'tag:':
            brace_idx = line.find('{', i)
            if brace_idx != -1 and brace_idx - i < 10:
                stack = 0
                end_idx = -1
                in_str = False
                str_char = ''
                for j in range(brace_idx, len(line)):
                    if not in_str:
                        if line[j] in ("'", '"'):
                            in_str = True
                            str_char = line[j]
                        elif line[j] == '{': stack += 1
                        elif line[j] == '}':
                            stack -= 1
                            if stack == 0:
                                end_idx = j
                                break
                    else:
                        if line[j] == str_char and line[j-1] != '\\':
                            in_str = False
                            
                if end_idx != -1:
                    inner_tag = line[brace_idx+1:end_idx]
                    new_inner = process_tag_content(inner_tag)
                    result.append('components:{' + new_inner + '}')
                    i = end_idx + 1
                    continue
        result.append(line[i])
        i += 1
    return "".join(result)

def process_dir(d):
    if not os.path.exists(d): return 0
    count = 0
    s2t = {
        "这里": "這裡", "副本": "副本", "失败": "失敗", "成功": "成功",
        "镇妖塔": "鎮妖塔", "镇长": "鎮長", "森林中的异变": "森林中的異變",
        "衰退的龙之力": "衰退的龍之力", "森林中的祭坛": "森林中的祭壇",
        "试探结界": "試探結界", "斩妖除魔": "斬妖除魔", "防守方指南": "防守方指南",
        "斥候": "斥候", "帮小兔子回家": "幫小兔子回家", "消失的供品": "消失的供品",
        "山神庙的庙公": "山神廟的廟公", "你也喜欢钓鱼吗": "你也喜歡釣魚嗎",
        "喜欢钓鱼的老人": "喜歡釣魚的老人", "队伍": "隊伍", "伤害": "傷害", "护甲": "護甲",
        "血量": "血量", "生命": "生命", "属性": "屬性", "装备": "裝備", "玩家": "玩家",
        "系统": "系統", "测试": "測試", "感谢": "感謝", "触发": "觸發", "武器": "武器", "解锁": "解鎖"
    }

    for root, dirs, files in os.walk(d):
        for f in files:
            if f.endswith('.mcfunction'):
                path = os.path.join(root, f)
                with open(path, 'r', encoding='utf-8') as file:
                    lines = file.readlines()
                
                new_lines = []
                for line in lines:
                    try:
                        line = replace_tags(line)
                    except Exception as e:
                        print(f"Error parsing line in {path}: {e}")
                    for s, t in s2t.items():
                        line = line.replace(s, t)
                    new_lines.append(line)
                
                if new_lines != lines:
                    with open(path, 'w', encoding='utf-8') as file:
                        file.writelines(new_lines)
                    print(f"Updated: {path}")
                    count += 1
    return count

total = 0
for d in directories:
    total += process_dir(d)
print(f"Migration completed. Updated {total} files.")
