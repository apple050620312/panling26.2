#获取血量
execute store result score @s monster_health run data get entity @s Health
execute store result score @s monster_max_health run attribute @s generic.max_health get

#获取怪物抗性
scoreboard players set @s monster_resis 0
execute if predicate pld:effect_check/resistance store result score @s monster_resis run data get entity @s ActiveEffects[{Id:11}].Amplifier
execute if predicate pld:effect_check/resistance run scoreboard players add @s monster_resis 1
scoreboard players set @s[scores={monster_resis=6..}] monster_resis 5


scoreboard players operation @s monster_resis *= 20 int
scoreboard players set @s damage_middle 100
scoreboard players operation @s damage_middle -= @s monster_resis
scoreboard players operation @s monster_resis = @s damage_middle

#根据实体阵法减伤率再次降低数据
execute as @s[tag=in30_boss4] run scoreboard players operation @s monster_resis *= 20 int
scoreboard players operation @s[tag=in30_boss4] monster_resis /= 100 int


#如果怪物血量低于zf_refined_metal_healthstg设定百分比，则傷害提升zf_mp_refined_metal_add
scoreboard players set #temp temp2 100
scoreboard players operation #temp temp = @s monster_max_health
scoreboard players operation #temp temp *= zf_refined_metal_healthstg percent
scoreboard players operation #temp temp /= 100 int
execute if score #temp temp >= @s monster_health run scoreboard players operation #temp temp2 += zf_mp_refined_metal_add percent

scoreboard players operation #temp damage_middle *= #temp temp2
scoreboard players operation #temp damage_middle /= 100 int

#减伤率降低数据
scoreboard players operation #temp damage_middle *= @s monster_resis
scoreboard players operation #temp damage_middle /= 100 int
scoreboard players operation @s monster_health -= #temp damage_middle

