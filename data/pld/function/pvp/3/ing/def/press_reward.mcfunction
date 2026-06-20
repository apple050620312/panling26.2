execute if score @s pvp3_defense_reward matches 2 run effect give @s resistance 5 1
execute if score @s pvp3_defense_reward matches 1 run effect give @s resistance 5 0

scoreboard players remove @s pvp3_defense_reward 1
