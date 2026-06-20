execute if entity @s[scores={race=0}] unless entity @s[advancements={pld:mission/shen/main/main8=true}] run function pld:system/tpsystem/tp_resis2
execute if entity @s[scores={race=1}] unless entity @s[advancements={pld:mission/yao/main/main10=true}] run function pld:system/tpsystem/tp_resis2
execute if entity @s[scores={race=2}] unless entity @s[advancements={pld:mission/xian/main/main8=true}] run function pld:system/tpsystem/tp_resis2
execute if entity @s[scores={race=3}] unless entity @s[advancements={pld:mission/zhan/main/main9=true}] run function pld:system/tpsystem/tp_resis2
execute if entity @s[scores={race=4}] unless entity @s[advancements={pld:mission/ren/main/main8=true}] run function pld:system/tpsystem/tp_resis2

execute if entity @s[scores={race=0},advancements={pld:mission/shen/main/main8=true}] run function pld:system/tpsystem/using_stone
execute if entity @s[scores={race=1},advancements={pld:mission/yao/main/main10=true}] run function pld:system/tpsystem/using_stone
execute if entity @s[scores={race=2},advancements={pld:mission/xian/main/main8=true}] run function pld:system/tpsystem/using_stone
execute if entity @s[scores={race=3},advancements={pld:mission/zhan/main/main9=true}] run function pld:system/tpsystem/using_stone
execute if entity @s[scores={race=4},advancements={pld:mission/ren/main/main8=true}] run function pld:system/tpsystem/using_stone


