#检查玩家是否在npc附近 -112 33 133
#不是
execute unless entity @s[x=-112,y=33,z=133,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=-112,y=33,z=133,distance=..5] run function pld:system/truth/ren/4/main
