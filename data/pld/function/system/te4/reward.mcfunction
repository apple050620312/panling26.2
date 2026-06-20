scoreboard players set @s ex_murder 1
tellraw @s[scores={ex_murder=1}] {"translate": "pl.info.te4_reward1"}

execute if score @s ex_murder matches 1 store success score @s success run function pld:system/te4/reward/check


tellraw @s[scores={ex_murder=1}] {"translate": "pl.info.te4_reward2"}
scoreboard players set @s[scores={ex_murder=1,job=0}] attack_damage1_murder 15
scoreboard players set @s[scores={ex_murder=1,job=1}] archer_damage1_murder 10
scoreboard players set @s[scores={ex_murder=1,job=2}] murder_zf_str 1

tellraw @s[scores={ex_murder=1}] {"translate": "pl.info.te4_reward3"}
playsound random.levelup ambient @s[scores={ex_murder=1}]
scoreboard players set @p[scores={success=1}] success 0



advancement grant @s[scores={ex_murder=1}] only pld:exploration/ex_murder
tp @s[scores={ex_murder=1}] -105 69 61 180 0