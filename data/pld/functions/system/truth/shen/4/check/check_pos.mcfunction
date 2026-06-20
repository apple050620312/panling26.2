#检查玩家是否在npc附近 123 32 814
#不是
execute unless entity @s[x=123,y=32,z=814,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=123,y=32,z=814,distance=..5] run function pld:system/truth/shen/4/main
