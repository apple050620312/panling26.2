execute if entity @s[scores={zhan_test_body=1}] run tellraw @s {"translate":"pl.info.test.already_done"}
execute unless score @s zhan_test_body matches 1 run scoreboard players set @s test_bodycheck 0
#execute unless score @s zhan_test_body matches 1 run scoreboard players set @s test_bodytick 6200

#异步
execute unless score @s zhan_test_body matches 1 run scoreboard players set @s test_bodytick 1550

execute unless score @s zhan_test_body matches 1 run tp @s 2930 27 -197