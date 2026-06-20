execute if entity @s[scores={ren_test_metal=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s ren_test_metal matches 1 run tp @s 1690 18 -278