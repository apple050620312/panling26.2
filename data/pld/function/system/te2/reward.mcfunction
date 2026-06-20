scoreboard players set @s ex_doctor 1
tellraw @s[scores={ex_doctor=1}] {"translate": "pl.info.te2_reward1"}
execute if score @s ex_doctor matches 1 store success score @s success run function pld:system/te2/reward/check

tellraw @s[scores={ex_doctor=1}] {"translate": "pl.info.te2_reward2"}
attribute @s[scores={ex_doctor=1}] minecraft:max_health modifier add 0-0-1-0-0 "李大夫支线奖励-生命" 2 add 
tellraw @s[scores={ex_doctor=1}] {"translate": "pl.info.te2_reward3"}
playsound entity.player.levelup ambient @s[scores={ex_doctor=1}]
scoreboard players set @p[scores={success=1}] success 0
tp @s[scores={ex_doctor=1}] -25 43 -602 0 0
advancement grant @s[scores={ex_doctor=1}] only pld:exploration/ex_doctor
