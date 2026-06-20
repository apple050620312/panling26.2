execute if entity @s[scores={zhan_test_speed=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s zhan_test_speed matches 1 run tp @s 2833 10 -159