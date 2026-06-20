#检查玩家是否在npc附近 3225 60 941
#不是
execute unless entity @s[x=3225,y=60,z=941,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=3225,y=60,z=941,distance=..5] run function pld:system/truth/xian/3/main

