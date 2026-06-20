scoreboard players set @s ex_ren 1
tellraw @s[scores={ex_ren=1}] {"translate": "pl.info.re_finish1"}




execute if score @s ex_ren matches 1 run function pld:system/ex_ren/reward/check


tellraw @s[scores={ex_ren=1}] {"translate": "pl.info.re_finish2"}
attribute @s minecraft:generic.max_health modifier add 0-0-0-2-4 "人族支线奖励-生命" 2 add 
attribute @s minecraft:generic.armor_toughness modifier add 0-0-0-2-4 "人族支线奖励-韧性" 1 add
tellraw @s[scores={ex_ren=1}] {"translate": "pl.info.re_finish3"}
scoreboard players add @s[scores={ex_ren=1}] racefriend4 14
scoreboard players add @s[scores={ex_ren=1}] racefriend1 10
tellraw @s[scores={ex_ren=1}] {"translate": "pl.info.re_finish4"}
tellraw @s[scores={ex_ren=1}] {"translate": "pl.info.re_finish5"}
data merge block 805 24 -70 {Items:[]}
data merge block 805 25 -70 {Items:[]}

#进度
advancement grant @s only pld:exploration/side_ren
tp @s[scores={ex_ren=1}] 837 54 -75 -90 0
playsound entity.player.levelup ambient @s[scores={ex_ren=1}] 837 54 -75
