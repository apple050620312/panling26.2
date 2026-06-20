import os
import re

directory = r'c:\panling26.2\data\pld\function\monsters'

def migrate_line(line):
    # 1. Item entity NBT checks (just in case)
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

    # 3. Specific Armor/Hand Items in Summon
    # Unbreakable + Specific Enchantments
    # Catch simple Unbreakable + Enchantments with 1 enchant
    line = re.sub(
        r'tag:\{Unbreakable:1b?,Enchantments:\[\{id:"(?P<eid1>[^"]+)",lvl:(?P<elvl1>\d+)s?\}\]\s*\}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"\g<eid1>":\g<elvl1>}}}',
        line
    )
    line = re.sub(
        r'tag:\{Enchantments:\[\{id:"(?P<eid1>[^"]+)",lvl:(?P<elvl1>\d+)s?\}\],\s*Unbreakable:1b?\s*\}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"\g<eid1>":\g<elvl1>}}}',
        line
    )
    
    # Custom replacements for multiple enchantments from grep results
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:10}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":10}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:12},{id:"punch",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":12,"minecraft:punch":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1b,Enchantments:[{id:"fire_aspect",lvl:1},{id:"knockback",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1,"minecraft:knockback":1}}}'
    )
    line = line.replace(
        r'tag:{Enchantments:[{id:"fire_aspect",lvl:1},{id:"knockback",lvl:1,}],Unbreakable:1b}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1,"minecraft:knockback":1}}}'
    )
    line = line.replace(
        r'tag:{Enchantments:[{id:"fire_aspect",lvl:2},{id:"knockback",lvl:1}],Unbreakable:1b}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:fire_aspect":2,"minecraft:knockback":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1b,Enchantments:[{id:"fire_aspect",lvl:2},{id:"knockback",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:fire_aspect":2,"minecraft:knockback":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:13}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":13}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:8},{id:"flame",lvl:1},{id:"punch",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":8,"minecraft:flame":1,"minecraft:punch":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:10},{id:"flame",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":10,"minecraft:flame":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:12},{id:"punch",lvl:1},{id:"flame",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":12,"minecraft:punch":1,"minecraft:flame":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1b,Enchantments:[{id:"power",lvl:9},{id:"punch",lvl:2}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":9,"minecraft:punch":2}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1b,Enchantments:[{id:"power",lvl:7},{id:"punch",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":7,"minecraft:punch":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1b,Enchantments:[{id:"power",lvl:7},{id:"flame",lvl:1},{id:"punch",lvl:1}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":7,"minecraft:flame":1,"minecraft:punch":1}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:15},{id:"punch",lvl:2}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":15,"minecraft:punch":2}}}'
    )
    line = line.replace(
        r'tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:12},{id:"punch",lvl:3}]}',
        r'components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":12,"minecraft:punch":3}}}'
    )
    
    # Just Unbreakable
    line = re.sub(
        r'tag:\{Unbreakable:1b?\}',
        r'components:{"minecraft:unbreakable":{}}',
        line
    )
    
    # S2T translations
    s2t = {
        "这里": "這裡", "副本": "副本", "失败": "失敗", "成功": "成功",
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
