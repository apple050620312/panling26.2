tellraw @s[scores={race=..3}] {"translate":"pl.info.re1_resistance"}
execute unless entity @s[scores={ex_ren=1..}] if entity @s[scores={race=4}] run tellraw @s {"translate":"pl.info.re1_in"}
execute unless entity @s[scores={ex_ren=1..}] if entity @s[scores={race=4}] run tellraw @s {"translate":"pl.info.re1_in2"}
tellraw @s[scores={ex_ren=1..}] {"translate":"pl.info.re1_finish_resistance"}
scoreboard players set @s re_kill_bunny 0
execute unless entity @s[scores={ex_ren=1..}] run scoreboard players set @s ex_ren 0
tag @s[scores={race=4,ex_ren=0}] add tp_in_hole
schedule function pld:system/ex_ren/tp_into_hole 2t
