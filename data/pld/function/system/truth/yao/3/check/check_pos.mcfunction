#检查玩家是否在npc附近 172 66 -158
#不是
execute unless entity @s[x=172,y=66,z=-158,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=172,y=66,z=-158,distance=..5] run function pld:system/truth/yao/3/main

