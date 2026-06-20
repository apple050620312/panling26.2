#标记-被灼焰了
scoreboard players set @s weapon_burn_tag 1

#点燃5s
data merge entity @s {Fire:100s}

#损失10%最大生命值的血量

#获取最大血量值
execute store result score @s entity_4max_health run attribute @s generic.max_health get 10000 
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

#觸發器-造成傷害
function pld:equipment_lock/equipment/armor/set_bonus/when_cause_damage
