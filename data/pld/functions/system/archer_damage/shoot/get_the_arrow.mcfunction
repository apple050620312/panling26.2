execute on origin if entity @s[tag=shooter] run scoreboard players set arrow_temp int 1

execute if score arrow_temp int matches 1 run function pld:system/archer_damage/shoot/set_damage
scoreboard players reset arrow_temp int