import os
import re

directory = r'c:\panling26.2\data\pld\function\equipment_lock'

def migrate_line(line):
    # 1. AttributeModifiers append
    # Old: Items[0].tag.AttributeModifiers append value {Slot:"mainhand",UUID:[I;6,5,5,5],Operation:1,AttributeName:"minecraft:generic.attack_speed",Amount:0.2}
    def attr_repl(m):
        slot = m.group('slot')
        uuid = m.group('uuid')
        op = m.group('op')
        attr = m.group('attr')
        amount = m.group('amount')
        
        op_str = "add_value"
        if op == "1": op_str = "add_multiplied_base"
        elif op == "2": op_str = "add_multiplied_total"
        
        # UUID is [I;9,1,1,1] -> pld:mod_9_1_1_1
        uuid_str = uuid.replace('[I;', '').replace(']', '').replace(',', '_')
        
        return f'Items[0].components."minecraft:attribute_modifiers".modifiers append value {{type:"{attr}", id:"pld:mod_{uuid_str}", amount:{amount}, operation:"{op_str}", slot:"{slot}"}}'
    
    line = re.sub(
        r'Items\[0\]\.tag\.AttributeModifiers append value \{Slot:"(?P<slot>[^"]+)",UUID:(?P<uuid>\[I;[\d,]+\]),Operation:(?P<op>\d+),AttributeName:"(?P<attr>[^"]+)",Amount:(?P<amount>[^}]+)\}',
        attr_repl, line
    )

    # 2. Enchantments append
    # Old: Items[0].tag.Enchantments append value {id:"minecraft:smite",lvl:2s}
    def ench_append(m):
        ench = m.group('ench')
        lvl = m.group('lvl').replace('s', '')
        return f'Items[0].components."minecraft:enchantments"."{ench}" set value {lvl}'
    line = re.sub(r'Items\[0\]\.tag\.Enchantments append value \{id:"(?P<ench>[^"]+)",lvl:(?P<lvl>\w+)\}', ench_append, line)

    # 3. Enchantments update
    # Old: Items[0].tag.Enchantments[{id:"minecraft:quick_charge"}].lvl set value 3s
    def ench_update(m):
        ench = m.group('ench')
        return f'Items[0].components."minecraft:enchantments"."{ench}"'
    line = re.sub(r'Items\[0\]\.tag\.Enchantments\[\{id:"(?P<ench>[^"]+)"\}\]\.lvl', ench_update, line)
    
    # Also strip 's' from 'set value 3s' if it was part of Enchantments update (it's safe to strip 's' from integer set values if it's right at the end of line)
    if 'components."minecraft:enchantments"' in line and 'set value' in line:
        line = re.sub(r'set value (\d+)s', r'set value \1', line)

    # 4. Custom Data exact match in entity selector/block NBT
    # Old: chest{Items:[{id:"minecraft:wooden_pickaxe",tag:{is_bow:1b}}]}
    # New: chest{Items:[{id:"minecraft:wooden_pickaxe",components:{"minecraft:custom_data":{is_bow:1b}}}]}
    line = re.sub(r'tag:\{(?P<inner>[^}]+)\}', r'components:{"minecraft:custom_data":{\g<inner>}}', line)
    
    # Old: Items[0].tag{type:1} -> Items[0].components."minecraft:custom_data"{type:1}
    line = re.sub(r'Items\[0\]\.tag\{(?P<inner>[^}]+)\}', r'Items[0].components."minecraft:custom_data"{\g<inner>}', line)
    
    # Old: tag.rare -> components."minecraft:custom_data".rare
    # We must be careful to avoid replacing components."minecraft:custom_data" if already replaced
    # Let's replace simple tag.prop -> components."minecraft:custom_data".prop
    for prop in ['rare', 'branch', 'enhance_lvl', 'type']:
        line = line.replace(f'Items[0].tag.{prop}', f'Items[0].components."minecraft:custom_data".{prop}')
    
    # Display name
    line = line.replace('Items[0].tag.display.Name', 'Items[0].components."minecraft:custom_name"')
    line = line.replace('Items[0].tag.display.Lore', 'Items[0].components."minecraft:lore"')

    # Simple S2T replacements
    s2t = {
        "防具": "防具", "头盔": "頭盔", "胸甲": "胸甲", "护腿": "護腿", "鞋子": "鞋子",
        "装备": "裝備", "稀有度": "稀有度", "等级": "等級", "武器": "武器", "检测": "檢測",
        "计时": "計時", "清理": "清理", "快捷栏": "快捷欄", "副手": "副手", "背包": "背包",
        "套装效果": "套裝效果", "泛用属性": "泛用屬性", "进攻": "進攻", "减伤": "減傷",
        "最终": "最終", "弹射物": "彈射物", "火焰": "火焰", "速度": "速度", "分支": "分支",
        "破军": "破軍", "金钟": "金鐘", "狙击": "狙擊", "游侠": "遊俠", "强度": "強度",
        "至少": "至少", "加成": "加成", "限制": "限制"
    }
    for s, t in s2t.items():
        line = line.replace(s, t)

    return line

def process_dir(d):
    for root, dirs, files in os.walk(d):
        for f in files:
            if f.endswith('.mcfunction'):
                path = os.path.join(root, f)
                with open(path, 'r', encoding='utf-8') as file:
                    lines = file.readlines()
                
                new_lines = [migrate_line(line) for line in lines]
                
                if new_lines != lines:
                    with open(path, 'w', encoding='utf-8') as file:
                        file.writelines(new_lines)
                    print(f"Updated: {path}")

process_dir(directory)
print("Migration completed.")
