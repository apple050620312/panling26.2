#检查玩家是否在npc附近 3318 115 354
#不是
execute unless entity @s[x=3318,y=115,z=354,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=3318,y=115,z=354,distance=..5] run function pld:system/truth/shen/1/check/check_criteria

