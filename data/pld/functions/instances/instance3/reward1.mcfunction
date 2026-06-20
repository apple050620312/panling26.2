#tellraw @s {"translate": "pl.info.instance3.reduce_friend1b"}
clear @s gray_dye{id:"panling:instance3_0"}
clear @s cyan_dye{id:"panling:instance3_1"}
execute if score @s instance3_floor matches 2 run function pld:instances/instance3/reward/2/reward
execute if score @s instance3_floor matches 3 run function pld:instances/instance3/reward/3/reward
execute if score @s instance3_floor matches 4 run function pld:instances/instance3/reward/4/reward
execute if score @s instance3_floor matches 5 run function pld:instances/instance3/reward/5/reward
execute if score @s instance3_floor matches 6 run function pld:instances/instance3/reward/6/reward
execute if score @s instance3_floor matches 7 run function pld:instances/instance3/reward/7/reward
execute if score @s instance3_floor matches 8 run function pld:instances/instance3/reward/8/reward
execute if score @s instance3_floor matches 9 run function pld:instances/instance3/reward/9/reward
execute if score @s instance3_floor matches 10 run function pld:instances/instance3/reward/10/reward

scoreboard players set @s instance3_tick -1
scoreboard players set @s feather_mainland 1
advancement grant @s only pld:instance3/root
advancement grant @s[scores={instance3_floor=10}] only pld:instance3/finish

tp @s -181 64 -180 -90 0

