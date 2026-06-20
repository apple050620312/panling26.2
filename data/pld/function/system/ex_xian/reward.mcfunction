setblock -851 89 -199 air
scoreboard players set @s ex_xian 1
playsound entity.player.levelup ambient @s[scores={ex_xian=1}]
tellraw @s {"translate":"pl.info.xe_finish1"}
tellraw @s {"translate":"pl.info.xe_finish2"}
execute if score @s ex_xian matches 1 run function pld:system/ex_xian/reward/check
tellraw @s {"translate":"pl.info.xe_finish3"}
attribute @s minecraft:generic.max_health modifier add 0-0-0-2-2 "仙族支线奖励-生命" 2 add 
attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-2-2 "仙族支线奖励-抗性" 0.2 add
tellraw @s {"translate":"pl.info.xe_finish4"}
scoreboard players add @s[scores={ex_xian=1}] racefriend2 14
scoreboard players add @s[scores={ex_xian=1}] racefriend1 10
advancement grant @s only pld:exploration/side_xian
tp @s[scores={ex_xian=1}] -848 135 -137 -130 0
