scoreboard players set @s ex_sword 1
tellraw @s {"translate":"pl.info.ex_sword_reward1"}
tellraw @s {"translate":"pl.info.ex_sword_reward2"}
attribute @s[scores={ex_sword=1}] minecraft:max_health modifier add panling:mod_0_0_1_0_2 2 add_value 
tellraw @s {"translate":"pl.info.ex_sword_reward3"}

execute if score @s ex_sword matches 1 run function pld:system/ex_sword/reward/check
tellraw @s {"translate":"pl.info.ex_sword_reward4"}
scoreboard players add @s honor 200
tp @s 1376 38 533 90 0
advancement grant @s only pld:exploration/ex_sword

playsound entity.player.levelup ambient @s 1376 38 533

