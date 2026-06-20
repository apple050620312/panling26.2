#检查玩家是否在npc附近 -119 46 139
#不是
execute unless entity @s[x=-119,y=46,z=139,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=-119,y=46,z=139,distance=..5] run function pld:system/truth/ren/3/main
