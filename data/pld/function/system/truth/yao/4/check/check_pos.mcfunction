#检查玩家是否在npc附近 
#不是
execute unless entity @s[x=339,y=33,z=-716,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=339,y=33,z=-716,distance=..5] run function pld:system/truth/yao/4/main

