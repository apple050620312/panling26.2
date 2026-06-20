#傷害
#获得玩家最大生命值
execute store result score @s entity_4max_health run attribute @s max_health get 10000
#获得所需傷害量
scoreboard players set #temp temp 2
scoreboard players operation #temp entity_hurt_temp = @s entity_4max_health
scoreboard players operation #temp entity_hurt_temp /= #temp temp

