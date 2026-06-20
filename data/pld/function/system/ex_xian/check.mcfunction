execute if block -845 133 -138 hopper{Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:xe"}}}]} unless entity @s[scores={ex_xian=1}] run tp @s[scores={race=2}] -851 122 -138
execute if block -845 133 -138 hopper{Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:xe"}}}]} if entity @s[scores={ex_xian=1}] run tellraw @s {"translate":"pl.info.xe_in_resistance"} 
data merge block -845 133 -138 {Items:[]}
data merge block -845 134 -138 {Items:[]}
