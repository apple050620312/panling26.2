execute unless entity @s[nbt={Inventory:}] run tellraw @s {"translate":"pl.info.pack_no_empty"}
execute unless entity @s[nbt={Inventory:}] run tp @s 2339 184 -1801 -90 0
execute if entity @s[nbt={Inventory:}] as @s run function pld:pvp/3/ing/atk/in_area