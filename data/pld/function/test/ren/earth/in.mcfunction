execute if entity @s[scores={ren_test_earth=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s ren_test_earth matches 1 run tp @s 1673 4 -194