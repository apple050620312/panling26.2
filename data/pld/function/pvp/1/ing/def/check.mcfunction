execute unless entity @s[nbt={Inventory:[]}] run tellraw @s {"translate":"pl.info.pack_no_empty"}
execute unless entity @s[nbt={Inventory:[]}] run tp @s 1358 56 -1826 -90 0
execute if entity @s[nbt={Inventory:[]}] as @s run function pld:pvp/1/ing/def/in_area