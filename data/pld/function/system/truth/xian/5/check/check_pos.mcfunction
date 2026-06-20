#检查玩家是否在npc附近 -335 97 -446
#不是
execute unless entity @s[x=-335,y=97,z=-446,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=-335,y=97,z=-446,distance=..5] run function pld:system/truth/xian/5/main

