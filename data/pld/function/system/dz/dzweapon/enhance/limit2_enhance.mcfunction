#根据id为炉子上附魔
#火焰附加1
execute if score #system temp matches 29 run data modify block ~ ~ ~ Items.[{Slot:6b}].tag.Enchantments append value {id:"minecraft:fire_aspect",lvl:1s}
#火焰附加2
execute if score #system temp matches 30 run data modify block ~ ~ ~ Items.[{Slot:6b}].tag.Enchantments append value {id:"minecraft:fire_aspect",lvl:2s}
#击退1
execute if score #system temp matches 31 run data modify block ~ ~ ~ Items.[{Slot:6b}].tag.Enchantments append value {id:"minecraft:knockback",lvl:1s}
#击退2
execute if score #system temp matches 32 run data modify block ~ ~ ~ Items.[{Slot:6b}].tag.Enchantments append value {id:"minecraft:knockback",lvl:2s}