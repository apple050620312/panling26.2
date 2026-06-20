#统计附近三格以内的怪物
scoreboard players reset @s entity_hurttime10_count
execute store result score @s entity_hurttime10_count run execute if entity @e[nbt={HurtTime:10s},tag=monster,distance=..5]
execute if score @s entity_hurttime10_count matches 1 run tag @e[nbt={HurtTime:10s},tag=monster,distance=..5] add warrior_tag
execute if score @s entity_hurttime10_count matches 2.. positioned ^-0.05 ^-0.05 ^ run function pld:system/warrior_attack/select
tag @s add attacker
execute as @e[tag=warrior_tag] run function pld:pre/threat
tag @s remove attacker


#根据玩家近战攻击属性对怪物造成伤害
function pld:system/warrior_attack/attribute/update
function pld:system/warrior_attack/attribute/atk_sp/update

#根据攻速计算当前刻倍率 
function pld:system/warrior_attack/attack_cool/get_multiplier

scoreboard players operation attack_damage float2 = @s attack_damage1
scoreboard players operation attack_damage float2 *= 10 int

#受伤函数
scoreboard players operation #temp entity_hurt_temp = attack_damage float2
scoreboard players operation #temp entity_hurt_temp *= attack_multiplier int
scoreboard players operation #temp entity_hurt_temp /= 100 int
tag @s add if_death_count
execute unless score attack_multiplier int matches 0 as @e[tag=warrior_tag] run function pld:system/warrior_attack/hurt/hurt_armor_enchant_effect
tag @s remove if_death_count

execute if score @s job matches 0 run function pld:system/warrior_attack/job0



#设置攻击冷却
function pld:system/warrior_attack/attack_cool/set_cool

#重置
tag @e[tag=warrior_tag] remove warrior_tag
advancement revoke @s only pld:system/attack