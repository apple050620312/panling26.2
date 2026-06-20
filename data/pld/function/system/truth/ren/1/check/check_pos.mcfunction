#检查玩家是否在npc附近 
#不是
execute unless entity @s[x=1713,y=49,z=159,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=1713,y=49,z=159,distance=..5] run function pld:system/truth/ren/1/check/check_criteria

