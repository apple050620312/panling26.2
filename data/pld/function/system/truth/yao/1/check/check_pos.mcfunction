#检查玩家是否在npc附近 2659 89 895
#不是
execute unless entity @s[x=2656,y=89,z=895,distance=..5] run function pld:system/truth/yao/1/check/too_far

#是
execute if entity @s[x=2656,y=89,z=895,distance=..5] run function pld:system/truth/yao/1/check/check_criteria

