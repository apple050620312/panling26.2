#tellraw @s {"translate": "pl.info.instance3.reduce_friend2b"}


execute if score @s instance3_floor matches -1 run function pld:instances/instance3_0/reward/-1/reward
execute if score @s instance3_floor matches -2 run function pld:instances/instance3_0/reward/-2/reward
execute if score @s instance3_floor matches -3 run function pld:instances/instance3_0/reward/-3/reward
execute if score @s instance3_floor matches -4 run function pld:instances/instance3_0/reward/-4/reward





scoreboard players set @s in3_skill_dp_mark 0
scoreboard players set @s feather_mainland 1
tp @s -181 64 -180 -90 0