#tellraw yl_jiu_qiu {"score":{"name": "@s","objective": "attack_speed1"}}

scoreboard players set #temp int 200
scoreboard players operation #temp int /= @s attack_speed1

scoreboard players set attack_multiplier int 20

execute if score @s attack_scool_down_tick = #temp int run scoreboard players set attack_multiplier int 0
scoreboard players remove #temp int 1
execute if score @s attack_scool_down_tick = #temp int run scoreboard players set attack_multiplier int 0
execute if score @s attack_scool_down_tick matches 1 run scoreboard players set attack_multiplier int 50
execute if score @s attack_scool_down_tick matches 0 run scoreboard players set attack_multiplier int 100