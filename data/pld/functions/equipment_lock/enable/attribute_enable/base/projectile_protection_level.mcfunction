data modify storage pld:system Temp set value {id:"minecraft:projectile_protection",lvl:0}

execute store result storage pld:system Temp.lvl int 1.0 run data get block ~ ~ ~ Items[0].tag.PLattributes.base.projectile_protection_level
scoreboard players set @s temp2 8
scoreboard players operation @s temp *= @s temp2 
scoreboard players operation @s equipment_arrow_protection_multiply_base += @s temp
scoreboard players reset @s temp
scoreboard players reset @s temp2
data modify block ~ ~ ~ Items[0].tag.Enchantments append from storage pld:system Temp
