# 输入 @s entity_hurt_temp
# 对@s 造成 

#获取最终傷害
scoreboard players operation @s entity_hurt_final = @s entity_hurt_temp
#tellraw @a {"score":{"objective": "entity_hurt_final","name": "@s"}}

#剩余血量计算
execute store result score @s entity_4health run data get entity @s Health 10000
scoreboard players operation @s entity_4health -= @s entity_hurt_final

#击杀掉落
#tag @s add loot_tag
#execute if score @s entity_4health matches ..0 at @s as @p[tag=if_death_count] run loot spawn ~ ~ ~ kill @e[limit=1,tag=loot_tag]
#tag @s remove loot_tag
#execute if score @s entity_4health matches ..0 run tag @s add death_count
#execute if score @s entity_4health matches ..0 run scoreboard players operation #temp entity_4health = @s entity_4health

#计数函数
#execute if score @s entity_4health matches ..0 as @p[tag=if_death_count] run function pld:system/zf/shifang/killcount/main

#血量覆盖&命中效果
#tellraw yl_jiu_qiu {"score":{"name": "@s","objective": "entity_4health"}}
execute if score @s entity_4health matches ..0 run damage @s 99999 minecraft:magic by @p[tag=if_death_count]
execute if score @s entity_4health matches 0.. run damage @s 0.00001 minecraft:magic by @p[tag=if_death_count] 
execute if score @s entity_4health matches 0.. store result entity @s Health double 0.0001 run scoreboard players get @s entity_4health


