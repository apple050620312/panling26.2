execute if entity @s[scores={shen_test_forest=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s shen_test_forest matches 1 run tp @s 2945.5 10 314.5