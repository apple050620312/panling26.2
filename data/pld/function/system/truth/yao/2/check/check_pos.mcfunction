#检查玩家是否在npc附近 253 49 26
#不是
execute unless entity @s[x=253,y=49,z=26,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=253,y=49,z=26,distance=..5] run function pld:system/truth/yao/2/main

