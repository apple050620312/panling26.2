execute if entity @s[scores={shen_test_star=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s shen_test_star matches 1 run tp @s 2916.5 232 376.5