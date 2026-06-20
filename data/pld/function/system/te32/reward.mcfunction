scoreboard players set @s ex_te32 1
playsound entity.player.levelup ambient @s[scores={ex_te32=1}]
tellraw @s[scores={ex_te32=1}] {"translate": "pl.info.te18_finish1"}
tellraw @s[scores={ex_te32=1}] {"translate": "pl.info.te18_finish2"}
execute if score @s ex_te32 matches 1 run function pld:system/te32/reward/check
tellraw @s[scores={ex_te32=1}] {"translate": "pl.info.te18_finish3"}
attribute @s minecraft:generic.armor modifier add 0-0-1-0-4 "雨竹支线奖励-護甲" 2 add 
tellraw @s[scores={ex_te32=1}] {"translate": "pl.info.te18_finish4"}
scoreboard players add @s[scores={ex_te32=1}] racefriend2 10
advancement grant @s[scores={ex_te32=1}] only pld:exploration/ex_te32
tp @s[scores={ex_te32=1}] -315 116 -424 90 0