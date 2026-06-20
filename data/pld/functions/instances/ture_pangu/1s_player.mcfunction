execute if score #system buff_health_final_story matches 1 unless predicate pld:effect_check/health_boost run effect give @a health_boost 1000000 4 false
execute if score #system buff_jump_final_story matches 1 run effect give @s jump_boost 15 1 false
execute if score #system buff_speed_final_story matches 1 run effect give @s speed 15 0 false
execute if score #system buff_resis_final_story matches 1 run effect give @s resistance 15 0 false

