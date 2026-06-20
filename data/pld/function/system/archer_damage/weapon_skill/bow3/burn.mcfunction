#根据duration 寻找玩家
#if_death_count
tag @p[tag=hit_player] add if_death_count

#标记-被灼焰了
scoreboard players set @s weapon_burn_tag 1

#损失10%最大生命值的血量

#获取最大血量值
execute store result score @s entity_4max_health run attribute @s max_health get 10000 
scoreboard players set #temp temp 10
scoreboard players operation @s entity_hurt_final = @s entity_4max_health
scoreboard players operation @s entity_hurt_final /= #temp temp

#剩余血量计算
execute store result score @s entity_4health run data get entity @s Health 10000

scoreboard players operation @s entity_4health -= @s entity_hurt_final


#击杀掉落
tag @s add loot_tag 
execute if score @s entity_4health matches ..0 at @s as @p[tag=if_death_count] run loot spawn ~ ~ ~ kill @e[limit=1,tag=loot_tag]
tag @s remove loot_tag 
#计数函数
execute if score @s entity_4health matches ..0 as @p[tag=if_death_count] run function pld:system/zf/shifang/killcount/main


#血量覆盖
execute store result entity @s Health double 0.0001 run scoreboard players get @s entity_4health

#命中效果 让他们看起来受伤了
effect give @s instant_damage 1 31 false
effect give @s instant_health 1 31 false


#粒子效果和音效
execute at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.6 0.5 0 30 force @a
execute at @s run playsound minecraft:item.firecharge.use player @a ~ ~1 ~

tag @a remove if_death_count