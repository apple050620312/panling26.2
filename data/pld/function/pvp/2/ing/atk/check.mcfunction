execute unless entity @s[nbt={Inventory:}] run tellraw @s {"translate":"pl.info.pack_no_empty"}
execute unless entity @s[nbt={Inventory:}] run tp @s 1870 44 -1788 180 0
execute if entity @s[nbt={Inventory:}] as @s run function pld:pvp/2/ing/atk/in_area
