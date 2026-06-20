execute if entity @s[scores={zhan_test_power=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s zhan_test_power matches 1 run effect give @s blindness 100000 0 false
execute unless score @s zhan_test_power matches 1 run tp @s 2917 54 -230 180 ~