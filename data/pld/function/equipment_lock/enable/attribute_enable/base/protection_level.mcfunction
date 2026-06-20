data modify storage pld:system Temp set value {id:"minecraft:protection",lvl:0}
execute store result score @s temp store result storage pld:system Temp.lvl int 1.0 run data get block ~ ~ ~ Items[0].tag.PLattributes.base.protection_level
scoreboard players set @s temp2 4
scoreboard players operation @s temp *= @s temp2 
scoreboard players operation @s equipment_all_protection_multiply_base += @s temp
scoreboard players reset @s temp
scoreboard players reset @s temp2
data modify block ~ ~ ~ Items[0].tag.Enchantments append from storage pld:system Temp
