import os
import re

directory = r'c:\panling26.2\data\pld\function\instances'

def migrate_line(line):
    # 1. Item entity NBT checks
    # Old: nbt={Item:{id:"minecraft:white_wool",tag:{instance:1}}}
    # New: nbt={Item:{id:"minecraft:white_wool",components:{"minecraft:custom_data":{instance:1}}}}
    line = re.sub(
        r'nbt=\{Item:\{id:"(?P<id>[^"]+)",tag:\{(?P<tag>[^}]+)\}\}\}',
        r'nbt={Item:{id:"\g<id>",components:{"minecraft:custom_data":{\g<tag>}}}}',
        line
    )
    # Old: nbt={Item:{tag:{instance:1}}}
    line = re.sub(
        r'nbt=\{Item:\{tag:\{(?P<tag>[^}]+)\}\}\}',
        r'nbt={Item:{components:{"minecraft:custom_data":{\g<tag>}}}}',
        line
    )

    # 2. Chest Item tags check
    # Old: chest{Items:[{Slot:0b,tag:{id:"panling:instance3_1"}}]}
    line = re.sub(
        r'chest\{Items:\[\{Slot:(?P<slot>[^,]+),tag:\{id:"(?P<id>[^"]+)"\}\}\]\}',
        r'chest{Items:[{Slot:\g<slot>,components:{"minecraft:custom_data":{id:"\g<id>"}}}]}',
        line
    )
    
    # 3. Specific Armor/Hand Items in Summon
    # Unbreakable + Color
    line = re.sub(
        r'tag:\{Unbreakable:1b?,display:\{color:(?P<color>\d+)\}\}',
        r'components:{"minecraft:unbreakable":{},"minecraft:dyed_color":{rgb:\g<color>}}',
        line
    )
    # Just Color
    line = re.sub(
        r'tag:\{display:\{color:(?P<color>\d+)\}\}',
        r'components:{"minecraft:dyed_color":{rgb:\g<color>}}',
        line
    )
    # Just Unbreakable
    line = re.sub(
        r'tag:\{Unbreakable:1b?\}',
        r'components:{"minecraft:unbreakable":{}}',
        line
    )
    # Unbreakable + Specific Enchantment (power 15, punch 1)
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:15},{id:"punch",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":15,"minecraft:punch":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:14},{id:"punch",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":14,"minecraft:punch":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:7},{id:"punch",lvl:1},{id:"flame",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":7,"minecraft:punch":1,"minecraft:flame":1}}}'
    )
    line = line.replace(
        r'tag:{Enchantments:[{id:"knockback",lvl:2}],Unbreakable:1}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:knockback":2}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:20}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:protection":20}}}'
    )
    
    # 4. Scoreboard tag replacements (any remaining specific ones like `tag:`)
    # Not needed generally if they are entity Tags like @e[tag=xxx] -> this is fine
    
    # S2T translations
    s2t = {
        "这里": "這裡", "始皇陵": "始皇陵", "副本": "副本", "失败": "失敗", "成功": "成功",
        "镇妖塔": "鎮妖塔", "地上层": "地上層", "地下层": "地下層", "哭声山谷": "哭聲山谷", "假盘": "假盤",
        "天道": "天道"
    }
    for s, t in s2t.items():
        line = line.replace(s, t)
        
    return line

def process_dir(d):
    count = 0
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
                    count += 1
    print(f"Migration completed. Updated {count} files.")

process_dir(directory)
