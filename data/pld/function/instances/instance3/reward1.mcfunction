#tellraw @s {"translate": "pl.info.instance3.reduce_friend1b"}
clear @s gray_dye[custom_data={id:"panling:instance3_0"}]
clear @s cyan_dye[custom_data={id:"panling:instance3_1"}]
execute if score @s instance3_floor matches 2..10 store result storage pld:macro id int 1 run scoreboard players get @s instance3_floor
execute if score @s instance3_floor matches 2..10 run function pld:instances/instance3/reward/macro_call with storage pld:macro

scoreboard players set @s instance3_tick -1
scoreboard players set @s feather_mainland 1
advancement grant @s only pld:instance3/root
advancement grant @s[scores={instance3_floor=10}] only pld:instance3/finish

tp @s -181 64 -180 -90 0

