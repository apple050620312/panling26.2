scoreboard players reset @s rechoose_trigger
#item replace entity @s enderchest.0 with air
#item replace entity @s enderchest.1 with air
#item replace entity @s enderchest.2 with air
#item replace entity @s enderchest.3 with air
#item replace entity @s enderchest.4 with air
#item replace entity @s enderchest.5 with air
#item replace entity @s enderchest.6 with air
#item replace entity @s enderchest.7 with air
#item replace entity @s enderchest.8 with air
#item replace entity @s enderchest.9 with air
#item replace entity @s enderchest.10 with air
#item replace entity @s enderchest.11 with air
#item replace entity @s enderchest.12 with air
#item replace entity @s enderchest.13 with air
#item replace entity @s enderchest.14 with air
#item replace entity @s enderchest.15 with air
#item replace entity @s enderchest.16 with air
#item replace entity @s enderchest.17 with air
#item replace entity @s enderchest.18 with air
#item replace entity @s enderchest.19 with air
#item replace entity @s enderchest.20 with air
#item replace entity @s enderchest.21 with air
#item replace entity @s enderchest.22 with air
#item replace entity @s enderchest.23 with air
#item replace entity @s enderchest.24 with air
#item replace entity @s enderchest.25 with air
#item replace entity @s enderchest.26 with air


attribute @s minecraft:max_health modifier remove panling:mod_0_0_0_2_0
attribute @s minecraft:max_health modifier remove panling:mod_0_0_0_2_1
attribute @s minecraft:max_health modifier remove panling:mod_0_0_0_2_2
attribute @s minecraft:armor modifier remove panling:mod_0_0_0_2_3
attribute @s minecraft:armor modifier remove panling:mod_0_0_0_2_4
attribute @s minecraft:armor_toughness modifier remove panling:mod_0_0_0_2_0
attribute @s minecraft:armor_toughness modifier remove panling:mod_0_0_0_2_4
attribute @s minecraft:movement_speed modifier remove panling:mod_0_0_0_2_1
attribute @s minecraft:knockback_resistance modifier remove panling:mod_0_0_0_2_2
attribute @s minecraft:attack_damage modifier remove panling:mod_0_0_0_2_3
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_1
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_2
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_3
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_4
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_5
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_6
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_7
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_8
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_9
attribute @s minecraft:max_health modifier remove panling:mod_13_0_0_0_1

scoreboard players set @s gotten_helmet61 0
scoreboard players set @s gotten_helmet62 0
scoreboard players set @s gotten_helmet63 0
scoreboard players set @s gotten_chest6 0
scoreboard players set @s gotten_chest62 0
scoreboard players set @s gotten_chest63 0
scoreboard players set @s gotten_leggings6 0
scoreboard players set @s gotten_leg62 0
scoreboard players set @s gotten_leg63 0
scoreboard players set @s gotten_boots61 0
scoreboard players set @s gotten_boots62 0
scoreboard players set @s gotten_boots63 0
scoreboard players set @s gotten_sword6 0
scoreboard players set @s gotten_bow6 0
scoreboard players set @s gotten_furnace6 0

scoreboard players reset @s dragon_check
scoreboard players reset @s bird_check
scoreboard players reset @s tiger_check
scoreboard players reset @s turtle_check
tag @s add is_selecting
scoreboard players set @s supply5ticks -2
scoreboard players set @s race -1
scoreboard players set @s job -1

experience set @s 0 points
experience set @s 0 levels
clear @s
function pld:equipment_lock/equipment/armor/set_bonus/clear_bonus
effect clear @s
spawnpoint @s 1315 76 42
scoreboard players set @s savepoint 0
scoreboard players set @s race 5
scoreboard players set @s honor 0
tag @s remove finish_select

function pld:system/rechoose/lvl_reset

function #pld:selectons/rechoose_agree

tellraw @a {"text":"","extra": [{"selector": "@s","color":"dark_red"},{"translate": "pl.info.rechoose1","color":"dark_red"}]}
#tellraw @s {"translate": "pl.info.rechoose2","color":"dark_red"}
tp @s 1315 76 42

