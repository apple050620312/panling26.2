#检查玩家是否在npc附近 3241 67 881
#不是
execute unless entity @s[x=3241,y=67,z=881,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=3241,y=67,z=881,distance=..5] run function pld:system/truth/xian/2/check/check_criteria

