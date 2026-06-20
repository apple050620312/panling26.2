#scoreboard players remove @s test_firetick 100
#异步
scoreboard players remove @s test_firetick 25
execute if score @s test_firetick matches ..0 run scoreboard players set @s test_firetick 1
scoreboard players remove @s test_firecheck 1
