execute if entity @s[scores={zhan_test_skill=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s zhan_test_skill matches 1 run tp @s 2893 65 -152 -45 20