#更新套装情况-根据记分板
#armor_set_bonus_id_head armor_rare_head
#armor_set_bonus_id_chest armor_rare_chest
#armor_set_bonus_id_legs armor_rare_legs
#armor_set_bonus_id_feet armor_rare_feet

#清理标签与效果
function pld:equipment_lock/equipment/armor/set_bonus/clear_bonus

#初心者套装检查
scoreboard players set #temp temp 0
execute if score @s armor_set_bonus_id_head matches 5 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_chest matches 5 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_legs matches 5 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_feet matches 5 run scoreboard players add #temp temp 1
#初心者4
execute if score #temp temp matches 4 run tag @s add beginner_set_4 

#金检查
scoreboard players set #temp temp 0
execute if score @s armor_set_bonus_id_head matches 0 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_chest matches 0 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_legs matches 0 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_feet matches 0 run scoreboard players add #temp temp 1
#金2
execute if score #temp temp matches 2.. run tag @s add metal_set_2 
#金4a
execute if score #temp temp matches 4 if score @s armor_rare_head matches 4.. if score @s armor_rare_chest matches 4.. if score @s armor_rare_legs matches 4.. if score @s armor_rare_feet matches 4.. run tag @s add metal_set_4a 
#金4b
execute if score #temp temp matches 4 if score @s armor_rare_head matches 5.. if score @s armor_rare_chest matches 5.. if score @s armor_rare_legs matches 5.. if score @s armor_rare_feet matches 5.. run tag @s add metal_set_4b 

#木检查
scoreboard players set #temp temp 0
execute if score @s armor_set_bonus_id_head matches 1 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_chest matches 1 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_legs matches 1 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_feet matches 1 run scoreboard players add #temp temp 1
#木2
execute if score #temp temp matches 2.. run tag @s add wood_set_2 
#木4a
execute if score #temp temp matches 4 if score @s armor_rare_head matches 4.. if score @s armor_rare_chest matches 4.. if score @s armor_rare_legs matches 4.. if score @s armor_rare_feet matches 4.. run tag @s add wood_set_4a 
#木4b
execute if score #temp temp matches 4 if score @s armor_rare_head matches 5.. if score @s armor_rare_chest matches 5.. if score @s armor_rare_legs matches 5.. if score @s armor_rare_feet matches 5.. run tag @s add wood_set_4b 

#水检查
scoreboard players set #temp temp 0
execute if score @s armor_set_bonus_id_head matches 2 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_chest matches 2 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_legs matches 2 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_feet matches 2 run scoreboard players add #temp temp 1
#水2
execute if score #temp temp matches 2.. run tag @s add water_set_2 
#水4a
execute if score #temp temp matches 4 if score @s armor_rare_head matches 4.. if score @s armor_rare_chest matches 4.. if score @s armor_rare_legs matches 4.. if score @s armor_rare_feet matches 4.. run tag @s add water_set_4a 
#水4b
execute if score #temp temp matches 4 if score @s armor_rare_head matches 5.. if score @s armor_rare_chest matches 5.. if score @s armor_rare_legs matches 5.. if score @s armor_rare_feet matches 5.. run tag @s add water_set_4b 

#火检查
scoreboard players set #temp temp 0
execute if score @s armor_set_bonus_id_head matches 3 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_chest matches 3 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_legs matches 3 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_feet matches 3 run scoreboard players add #temp temp 1
#火2
execute if score #temp temp matches 2.. run tag @s add fire_set_2 
#火4a
execute if score #temp temp matches 4 if score @s armor_rare_head matches 4.. if score @s armor_rare_chest matches 4.. if score @s armor_rare_legs matches 4.. if score @s armor_rare_feet matches 4.. run tag @s add fire_set_4a 
#火4b
execute if score #temp temp matches 4 if score @s armor_rare_head matches 5.. if score @s armor_rare_chest matches 5.. if score @s armor_rare_legs matches 5.. if score @s armor_rare_feet matches 5.. run tag @s add fire_set_4b 

#土检查
scoreboard players set #temp temp 0
execute if score @s armor_set_bonus_id_head matches 4 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_chest matches 4 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_legs matches 4 run scoreboard players add #temp temp 1
execute if score @s armor_set_bonus_id_feet matches 4 run scoreboard players add #temp temp 1
#土2
execute if score #temp temp matches 2.. run tag @s add earth_set_2 
#土4a
execute if score #temp temp matches 4 if score @s armor_rare_head matches 4.. if score @s armor_rare_chest matches 4.. if score @s armor_rare_legs matches 4.. if score @s armor_rare_feet matches 4.. run tag @s add earth_set_4a 
#土4b
execute if score #temp temp matches 4 if score @s armor_rare_head matches 5.. if score @s armor_rare_chest matches 5.. if score @s armor_rare_legs matches 5.. if score @s armor_rare_feet matches 5.. run function pld:equipment_lock/equipment/armor/set_bonus/earth/4b/main_mission_check


#接口-套裝效果检查
function #pld:equipment_lock/armor/set_check