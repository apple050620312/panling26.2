execute if entity @s[scores={ren_test_water=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s ren_test_water matches 1 run tp @s 1745 44 -228