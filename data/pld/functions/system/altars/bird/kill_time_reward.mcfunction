#scoreboard players remove @s birdtime 40
#异步
scoreboard players remove @s birdtime 10

execute if score @s birdtime matches ..-1 run scoreboard players set @s birdtime -1
scoreboard players remove @s bird_kill 1