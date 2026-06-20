scoreboard players remove @s damage_tick 1
execute as @s[scores={damage_tick=0}] run function pld:pre/damage/attributes/reset

