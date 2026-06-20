execute if entity @s[scores={shen_test_sea=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s shen_test_sea matches 1 run tp @s 2872 3 360