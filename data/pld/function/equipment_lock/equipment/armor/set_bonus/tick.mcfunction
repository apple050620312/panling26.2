#实时检查状态
#二件套通用冷却倒计时
#execute if score @s armor_set_bonus_cool_2_tick matches 1.. run scoreboard players remove @s armor_set_bonus_cool_2_tick 1
#四件套通用冷却倒计时
execute if score @s armor_set_bonus_cool_4_tick matches 1.. run scoreboard players remove @s armor_set_bonus_cool_4_tick 1

#二件套冷却倒计时
execute if score @s armor_set_bonus_cool_1_2_tick matches 1.. run scoreboard players remove @s armor_set_bonus_cool_1_2_tick 1
execute if score @s armor_set_bonus_cool_2_2_tick matches 1.. run scoreboard players remove @s armor_set_bonus_cool_2_2_tick 1
execute if score @s armor_set_bonus_cool_4_2_tick matches 1.. run scoreboard players remove @s armor_set_bonus_cool_4_2_tick 1

#金二件套倒计时
execute if score @s armor_set_bonus_0_2_tick matches 0.. run scoreboard players remove @s armor_set_bonus_0_2_tick 1
#execute unless entity @s[tag=metal_set_2] if entity @s[tag=metal_set_2_lvl1] run scoreboard players set @s armor_set_bonus_0_2_tick 0
execute if score @s armor_set_bonus_0_2_tick matches 0 run function pld:equipment_lock/equipment/armor/set_bonus/metal/2/clear

#水二件套
execute if entity @s[tag=water_set_2] unless score @s armor_set_bonus_cool_2_2_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/water/2/main


#土二件套
execute if entity @s[tag=earth_set_2] unless score @s armor_set_bonus_cool_4_2_tick matches 1.. run function pld:equipment_lock/equipment/armor/set_bonus/earth/2/main

#金四件套持续时间倒计时
execute if score @s armor_set_bonus_0_4_tick matches 0.. run scoreboard players remove @s armor_set_bonus_0_4_tick 1
execute unless entity @s[tag=metal_set_4a] if entity @s[scores={job=0}] run scoreboard players set @s armor_set_bonus_0_4_tick 0
execute unless entity @s[tag=metal_set_4a] if entity @s[scores={job=2}] run scoreboard players set @s armor_set_bonus_0_4_tick 0
execute if entity @s[scores={armor_set_bonus_0_4_tick=0,job=0}] run attribute @s generic.movement_speed modifier remove 12-0-4-0-0
execute if entity @s[scores={armor_set_bonus_0_4_tick=0,job=2}] run tag @s remove set_bonus_0_4_2


#木四件套持续时间倒计时
execute if score @s armor_set_bonus_1_4_tick matches 0.. run scoreboard players remove @s armor_set_bonus_1_4_tick 1
execute unless entity @s[tag=wood_set_4a] run scoreboard players set @s armor_set_bonus_1_4_tick 0
execute if entity @s[scores={armor_set_bonus_1_4_tick=0,job=1}] run attribute @s generic.movement_speed modifier remove 12-1-4-0-0

#水四件套持续时间倒计时
execute if score @s armor_set_bonus_2_4_tick matches 0.. run scoreboard players remove @s armor_set_bonus_2_4_tick 1
execute unless entity @s[tag=water_set_4a] run scoreboard players set @s armor_set_bonus_2_4_tick 0
execute if entity @s[scores={armor_set_bonus_2_4_tick=0,job=0}] run attribute @s generic.max_health modifier remove 12-2-4-0-0 
execute if entity @s[scores={armor_set_bonus_2_4_tick=0,job=1}] run attribute @s generic.movement_speed modifier remove 12-2-4-0-0 

#火四件套持续时间倒计时
execute if score @s armor_set_bonus_3_4_tick matches 0.. run scoreboard players remove @s armor_set_bonus_3_4_tick 1
execute unless entity @s[tag=fire_set_4a] run scoreboard players set @s armor_set_bonus_3_4_tick 0
execute if entity @s[scores={job=0,armor_set_bonus_3_4_tick=1..}] at @s run function pld:equipment_lock/equipment/armor/set_bonus/fire/40/tick
execute if entity @s[tag=fire_0_ring] at @s unless entity @p[distance=..5,scores={armor_set_bonus_3_4_tick=1..}] run function pld:equipment_lock/equipment/armor/set_bonus/fire/40/clear
execute if entity @s[scores={armor_set_bonus_2_4_tick=0,job=1}] run attribute @s generic.movement_speed modifier remove 12-3-4-0-0


#土四件套-战
execute if score @s job matches 0 if entity @s[tag=earth_set_4a] unless score @s armor_set_bonus_cool_4_tick matches 1.. if predicate pld:effect_check/absorption run attribute @s generic.attack_damage modifier add 12-4-4-0-0 "土四件套属性" 0.35 multiply_base
execute unless entity @s[tag=earth_set_4a] if entity @s[scores={job=0}] run attribute @s generic.attack_damage modifier remove 12-4-4-0-0

#土四件套-弓
#execute if entity @s[tag=earth_set_4a,scores={job=1}]

#土四件套-丹
#execute if entity @s[tag=earth_set_4a,scores={job=2}]

#金四件套-圣兽
execute if entity @s[tag=metal_set_4b,scores={job=0,tiger=1}] run attribute @s generic.attack_damage modifier add 12-0-4-1-0 "金圣兽套属性" 0.15 multiply_base
execute unless entity @s[tag=metal_set_4b] if entity @s[scores={job=0,tiger=1}] run attribute @s generic.attack_damage modifier remove 12-0-4-1-0

#火四件套-圣兽
execute if entity @s[tag=fire_set_4b,scores={job=0,bird=1}] run attribute @s generic.attack_damage modifier add 12-3-4-1-0 "火圣兽套属性" 0.15 multiply_base
execute unless entity @s[tag=fire_set_4b] if entity @s[scores={job=0,bird=1}] run attribute @s generic.attack_damage modifier remove 12-3-4-1-0

#木四件套-圣兽
execute if entity @s[tag=wood_set_4b,scores={dragon=1}] run attribute @s generic.max_health modifier add 12-1-4-1-0 "木圣兽套属性" 0.2 multiply_base
execute unless entity @s[tag=wood_set_4b,scores={dragon=1}] run attribute @s generic.max_health modifier remove 12-1-4-1-0

#水四件套-圣兽
execute if entity @s[tag=water_set_4b,scores={turtle=1}] run attribute @s generic.max_health modifier add 12-2-4-1-0 "水圣兽套属性" 0.2 multiply_base
execute unless entity @s[tag=water_set_4b,scores={turtle=1}] run attribute @s generic.max_health modifier remove 12-2-4-1-0

#土四件套-圣兽 todo
#execute if entity @s[tag=earth_set_4b]

#初心者
execute if entity @s[tag=beginner_set_4,scores={job=0}] at @s unless entity @e[tag=monster,distance=..5] unless predicate pld:effect_check/regeneration run effect give @s regeneration 5 0
execute if entity @s[tag=beginner_set_4,scores={job=1}] at @s unless entity @e[tag=monster,distance=..10] unless predicate pld:effect_check/regeneration run effect give @s regeneration 5 0
execute if entity @s[tag=beginner_set_4,scores={job=2}] at @s unless entity @e[tag=monster,distance=..5] unless predicate pld:effect_check/regeneration run effect give @s regeneration 5 0
