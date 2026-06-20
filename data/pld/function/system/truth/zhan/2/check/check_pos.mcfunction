#检查玩家是否在npc附近 3259 115 375
#不是
execute unless entity @s[x=3259,y=115,z=375,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=3259,y=115,z=375,distance=..5] run function pld:system/truth/zhan/2/main
