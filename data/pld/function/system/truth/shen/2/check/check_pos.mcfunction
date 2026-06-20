
#检查玩家是否在npc附近 2742 53 867
#不是
execute unless entity @s[x=2742,y=53,z=867,distance=..5] run tellraw @s {"translate":"pl.info.npc_too_far"}

#是
execute if entity @s[x=2742,y=53,z=867,distance=..5] run function pld:system/truth/shen/2/main
