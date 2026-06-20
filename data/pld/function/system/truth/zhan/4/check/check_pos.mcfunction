#检查玩家是否在npc附近 -678 139 346
#不是
execute unless entity @s[x=-678,y=139,z=346,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=-678,y=139,z=346,distance=..5] run function pld:system/truth/zhan/4/main
