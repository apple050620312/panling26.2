execute if entity @s[scores={shen_test_mont=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s shen_test_mont matches 1 run tp @s 2874.5 27 312.5
