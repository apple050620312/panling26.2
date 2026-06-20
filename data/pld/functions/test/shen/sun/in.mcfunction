execute if entity @s[scores={shen_test_sun=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s shen_test_sun matches 1 run tp @s 2893.5 27 318.5