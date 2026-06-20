import os
import re

directory = r'c:\panling26.2\data\pld\function\npcs'

def process_tag_content(tag_str):
    # This function takes the INNER content of tag:{...}
    # and converts it to the INNER content of components:{...}
    components = []
    
    # CustomModelData
    cmd_match = re.search(r'CustomModelData:(\d+)', tag_str)
    if cmd_match:
        components.append(f'"minecraft:custom_model_data":{cmd_match.group(1)}')
        tag_str = re.sub(r'CustomModelData:\d+,?', '', tag_str)
        
    # Unbreakable
    unb_match = re.search(r'Unbreakable:1b?', tag_str)
    if unb_match:
        components.append(f'"minecraft:unbreakable":{{}}')
        tag_str = re.sub(r'Unbreakable:1b?,?', '', tag_str)
        
    # HideFlags
    hf_match = re.search(r'HideFlags:(\d+)', tag_str)
    if hf_match:
        components.append(f'"minecraft:hide_additional_tooltip":{{}}') # Simplified mapping for HideFlags in 1.20.5
        tag_str = re.sub(r'HideFlags:\d+,?', '', tag_str)
        
    # display:{Name:'...',Lore:['...'],color:...}
    display_match = re.search(r'display:\{([^}]+)\}', tag_str)
    if display_match:
        disp_inner = display_match.group(1)
        name_match = re.search(r'Name:(\'[^\']+\'|"[^"]+")', disp_inner)
        if name_match:
            components.append(f'"minecraft:custom_name":{name_match.group(1)}')
        
        lore_match = re.search(r'Lore:(\[[^\]]+\])', disp_inner)
        if lore_match:
            components.append(f'"minecraft:lore":{lore_match.group(1)}')
            
        color_match = re.search(r'color:(\d+)', disp_inner)
        if color_match:
            components.append(f'"minecraft:dyed_color":{{rgb:{color_match.group(1)}}}')
            
        tag_str = tag_str.replace(display_match.group(0), '')
        # remove trailing commas
        tag_str = re.sub(r',\s*,', ',', tag_str)
        
    # Enchantments:[{id:"...",lvl:...},...]
    ench_match = re.search(r'Enchantments:\[([^\]]+)\]', tag_str)
    if ench_match:
        ench_inner = ench_match.group(1)
        # Parse individual enchantments {id:"...",lvl:...}
        enchs = re.findall(r'\{id:"([^"]+)",lvl:(\d+)s?\}', ench_inner)
        if enchs:
            levels = []
            for eid, lvl in enchs:
                # remove "minecraft:" if present, then add it back to normalize
                eid = eid.replace("minecraft:", "")
                levels.append(f'"{eid}":{lvl}')
            components.append(f'"minecraft:enchantments":{{levels:{{{",".join(levels)}}}}}')
        tag_str = tag_str.replace(ench_match.group(0), '')
        
    # CustomPotionEffects
    # We will just map the entire remaining tag_str to custom_data if there is any left
    
    # AttributeModifiers
    attr_match = re.search(r'AttributeModifiers:\[([^\]]+)\]', tag_str)
    if attr_match:
        # In 1.21 this is complicated. We'll skip complex attribute modifiers conversion for now and let custom_data catch it, 
        # or do a basic conversion. Actually, we'll just remove it and put it in custom data for now since it's just visual in trades.
        pass
        
    # Clean up tag_str
    tag_str = re.sub(r',+', ',', tag_str).strip(',')
    
    if tag_str.strip():
        # What remains goes into custom_data
        components.append(f'"minecraft:custom_data":{{{tag_str}}}')
        
    return ",".join(components)

def replace_tags(line):
    # Find all tag:{...} blocks using balanced parenthesis matching
    result = []
    i = 0
    while i < len(line):
        if line[i:i+4] == 'tag:':
            # find the opening brace
            brace_idx = line.find('{', i)
            if brace_idx != -1:
                # Find matching closing brace
                stack = 0
                end_idx = -1
                for j in range(brace_idx, len(line)):
                    if line[j] == '{': stack += 1
                    elif line[j] == '}':
                        stack -= 1
                        if stack == 0:
                            end_idx = j
                            break
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
    count = 0
    s2t = {
        "这里": "這裡", "副本": "副本", "失败": "失敗", "成功": "成功",
        "镇妖塔": "鎮妖塔", "镇长": "鎮長", "森林中的异变": "森林中的異變",
        "衰退的龙之力": "衰退的龍之力", "森林中的祭坛": "森林中的祭壇",
        "试探结界": "試探結界", "斩妖除魔": "斬妖除魔", "防守方指南": "防守方指南",
        "斥候": "斥候", "帮小兔子回家": "幫小兔子回家", "消失的供品": "消失的供品",
        "山神庙的庙公": "山神廟的廟公", "你也喜欢钓鱼吗": "你也喜歡釣魚嗎",
        "喜欢钓鱼的老人": "喜歡釣魚的老人"
    }

    for root, dirs, files in os.walk(d):
        for f in files:
            if f.endswith('.mcfunction'):
                path = os.path.join(root, f)
                with open(path, 'r', encoding='utf-8') as file:
                    lines = file.readlines()
                
                new_lines = []
                for line in lines:
                    line = replace_tags(line)
                    for s, t in s2t.items():
                        line = line.replace(s, t)
                    new_lines.append(line)
                
                if new_lines != lines:
                    with open(path, 'w', encoding='utf-8') as file:
                        file.writelines(new_lines)
                    count += 1
    print(f"Migration completed. Updated {count} files.")

process_dir(directory)
