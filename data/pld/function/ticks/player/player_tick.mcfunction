
execute if score @s rechoose_trigger matches 1 run function pld:system/rechoose/rechoose_agree2


execute if score @s attack_scool_down_tick matches 1.. run scoreboard players remove @s attack_scool_down_tick 1
#玩家死亡事件（非pvp）
execute unless score @s inpvp matches 1 if score @s player_death matches 1.. run function pld:system/player_death

#弓箭手使用弓检测（非pvp）
execute unless score @s inpvp matches 1 if score @s job matches 1 if score @s bow_used matches 1.. run function pld:system/archer_damage/shoot/bow_use_check

#检查环城
execute as @s[x=22,y=47,z=-4,dx=-2,dy=6,dz=1] unless score @s parkour_middle_in matches 1 run function pld:system/parkour_middle/main
execute if score @s parkour_middle_in matches 1 run function pld:system/parkour_middle/limit
execute if score @s parkour_middle_in matches 1 as @s[x=24,y=45,z=-8,dx=1,dy=2,dz=1] run function pld:system/parkour_middle/failed
execute if score @s parkour_middle_in matches 1 as @s[x=21,y=54,z=-6,dx=0,dy=0,dz=0] run function pld:system/parkour_middle/finish

#右键事件
execute if score @s right_click_check matches 1.. run function pld:system/right_click
#重置，蹲下
scoreboard players set @s sneak_check 0

#为玩家提供uid
execute unless score @s player_uid matches 1.. store result score @s player_uid run scoreboard players add #system player_uid 1

#武器技冷却
function pld:system/weapon_skill_cool/update

#装备激活
function pld:equipment_lock/tick

#套装效果tick
function pld:equipment_lock/equipment/armor/set_bonus/tick

#阵法部分tick
function pld:system/zf/zftick

#菜单书tick
function pld:system/menubook/menutick

#真相任务tick
function pld:system/truth/tick


#玩家受到伤害
execute if score @s damage_tick matches 0.. run function pld:pre/damage/tick

#抗毒效果
scoreboard players reset @s temp
execute if predicate pld:effect_check/luck store result score @s temp run data get entity @s ActiveEffects[{Id:26}].Amplifier
execute if score @s temp matches 0.. run effect clear @s poison 
execute if score @s temp matches 1.. run effect clear @s wither
execute if score @s temp matches 2.. run effect clear @s slowness
execute if score @s temp matches 2.. run effect clear @s weakness
execute if score @s temp matches 2.. run effect clear @s hunger

#末影箱菜单
function pld:system/chest_menu/tick_players

#玩家5ticks、1s
execute if score #system tick_operation matches 0 run function pld:ticks/player/tick1
execute if score #system tick_operation matches 1 run function pld:ticks/player/tick2
execute if score #system tick_operation matches 2 run function pld:ticks/player/tick3
execute if score #system tick_operation matches 3 run function pld:ticks/player/tick4
execute if score #system tick_count matches 20 run function pld:ticks/player/1s