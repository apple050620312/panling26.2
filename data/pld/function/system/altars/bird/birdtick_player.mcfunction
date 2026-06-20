scoreboard players remove @s[scores={birdtime=0..}] birdtime 1
execute as @s[scores={birdtime=0..,bird_kill=1..}] run function pld:system/altars/bird/kill_time_reward
execute as @s[scores={birdtime=-1}] run function pld:system/altars/bird/outbirdtest
