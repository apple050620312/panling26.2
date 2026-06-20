title @s title {"translate": "pl.info.death_title"}
tellraw @s {"translate": "pl.info.death"}
effect give @s night_vision 5
effect give @s blindness 5
effect give @s slowness 5 10 
scoreboard players set @s[tag=!is_selecting,team=normal] feather_mainland -1 
scoreboard players set @s instance3_tick -1
scoreboard players set @s in3_skill_dp_mark 0
scoreboard players reset @s racefriend_tick
scoreboard players reset @s instance3_floor
tag @s remove sword_0
tag @s remove sword_1
#降低玩家的100%攻击力
attribute @s generic.attack_damage modifier add 101-0-0-0-0 "近战伤害屏蔽" -0.99999 multiply

scoreboard players reset @s player_death
execute if score @s parkour_middle_in matches 1 run function pld:system/parkour_middle/failed


