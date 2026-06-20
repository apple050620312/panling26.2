execute unless entity @s[nbt={Inventory:}] run tellraw @s {"translate":"pl.info.pack_no_empty"}
execute unless entity @s[nbt={Inventory:}] run tp @s 1349 51 -1776 -90 0
execute if entity @s[nbt={Inventory:}] as @s run function pld:pvp/1/ing/atk/in_area