execute if entity @s[scores={zhan_test_heart=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute as @s run function pld:test/zhan/heart/radom_room
execute unless score @s zhan_test_heart matches 1 run tp @s 2882 30 -216 