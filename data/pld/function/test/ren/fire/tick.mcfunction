scoreboard players remove @s[scores={test_firetick=1..}] test_firetick 1
execute as @s[scores={test_firecheck=1..,test_firetick=1..}] run function pld:test/ren/fire/kill_time_reward
execute as @s[scores={test_firetick=0},x=1764,y=26,z=-168,distance=..20] run function pld:test/ren/fire/out
