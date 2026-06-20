#scoreboard players remove @s test_bodytick 100
#异步
scoreboard players remove @s test_bodytick 25

execute if score @s test_bodytick matches ..0 run scoreboard players set @s test_bodytick 1
scoreboard players remove @s test_bodycheck 1