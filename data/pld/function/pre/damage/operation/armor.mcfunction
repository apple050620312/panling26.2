#盔甲傷害减免

#获取盔甲值
execute store result score @s entity_2armor run attribute @s armor get 100
execute store result score @s entity_2toughness run attribute @s armor_toughness get 100

#输入 
# #temp entity_hurt_temp 
# @s    entity_2armor    entity_2toughness
#输出
# @s entity_hurt_temp

scoreboard players operation #temp temp = @s entity_2toughness
scoreboard players set #temp temp2 4
scoreboard players operation #temp temp /= #temp temp2
scoreboard players add #temp temp 200

scoreboard players operation #temp temp2 = #temp entity_hurt_temp
scoreboard players operation #temp temp2 /= #temp temp
scoreboard players operation #temp temp2 *= 100 int

scoreboard players operation #temp temp = @s entity_2armor
scoreboard players operation #temp temp -= #temp temp2

scoreboard players operation #temp temp2 = @s entity_2armor
scoreboard players operation #temp temp2 /= 5 int

scoreboard players operation #temp temp > #temp temp2
scoreboard players set #temp temp2 2000
scoreboard players operation #temp temp < #temp temp2
scoreboard players set #temp temp2 25
scoreboard players operation #temp temp /= #temp temp2
scoreboard players set #temp temp2 100
scoreboard players operation #temp temp2 -= #temp temp
#盔甲减免后傷害 四位小数 在temp内
scoreboard players operation #temp temp = #temp entity_hurt_temp
scoreboard players operation #temp temp *= #temp temp2
scoreboard players operation @s entity_hurt_temp = #temp temp


