scoreboard players set @s ex_shen 1
playsound entity.player.levelup ambient @s[scores={ex_shen=1}]
tellraw @s[scores={ex_shen=1}] {"translate": "pl.info.se_finish1"}
tellraw @s[scores={ex_shen=1}] {"translate": "pl.info.se_finish2"}
execute if score @s ex_shen matches 1 run function pld:system/ex_shen/reward/check

tellraw @s[scores={ex_shen=1}] {"translate": "pl.info.se_finish3"}
attribute @s minecraft:generic.max_health modifier add 0-0-0-2-0 "神族支线奖励-生命" 2 add 
attribute @s minecraft:generic.armor_toughness modifier add 0-0-0-2-0 "神族支线奖励-韧性" 1 add
tellraw @s[scores={ex_shen=1}] {"translate": "pl.info.se_finish4"}
scoreboard players add @s[scores={ex_shen=1}] racefriend3 10
scoreboard players add @s[scores={ex_shen=1}] racefriend0 14
advancement grant @s only pld:exploration/side_shen
tp @s[scores={ex_shen=1}] -678 140 357 180 0