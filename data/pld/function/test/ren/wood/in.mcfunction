execute if entity @s[scores={ren_test_wood=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s ren_test_wood matches 1 run tp @s 1823 233 -320 0 ~