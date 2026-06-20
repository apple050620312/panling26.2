execute if entity @s[scores={ren_test_fire=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s ren_test_fire matches 1 run scoreboard players set @s test_firecheck 0
#execute unless score @s ren_test_fire matches 1 run scoreboard players set @s test_firetick 6200
#异步
execute unless score @s ren_test_fire matches 1 run scoreboard players set @s test_firetick 1550
execute unless score @s ren_test_fire matches 1 run tp @s 1764 26 -168