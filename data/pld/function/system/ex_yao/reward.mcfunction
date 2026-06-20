scoreboard players set @s ex_yao 1
playsound entity.player.levelup ambient @s[scores={ex_yao=1}]
tellraw @s[scores={ex_yao=1}] {"translate": "pl.info.ye_finish1"}
tellraw @s[scores={ex_yao=1}] {"translate": "pl.info.ye_finish2"}
execute if score @s ex_yao matches 1 run function pld:system/ex_yao/reward/check
tellraw @s[scores={ex_yao=1}] {"translate": "pl.info.ye_finish3"}
attribute @s minecraft:max_health modifier add panling:mod_0_0_0_2_1 2 add_value 
attribute @s minecraft:movement_speed modifier add panling:mod_0_0_0_2_1 0.05 add_multiplied_base
tellraw @s[scores={ex_yao=1}] {"translate": "pl.info.ye_finish4"}
scoreboard players add @s[scores={ex_yao=1}] racefriend4 10
scoreboard players add @s[scores={ex_yao=1}] racefriend1 14
advancement grant @s only pld:exploration/side_yao
tp @s[scores={ex_yao=1}] 0 47 828 -75 -5