
#检查玩家是否在npc附近 3337 109 941
#不是
execute unless entity @s[x=3337,y=109,z=941,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=3337,y=109,z=941,distance=..5] run function pld:system/truth/ren/2/main
