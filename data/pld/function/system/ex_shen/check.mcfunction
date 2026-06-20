execute if block -678 137 351 minecraft:dropper[block_entity_data={Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:se1"}}}]}] unless entity @s[scores={ex_shen=1}] run tp @s[scores={race=0}] -698 143 354 180 0
execute if block -678 137 351 minecraft:dropper[block_entity_data={Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:se1"}}}]}] if entity @s[scores={ex_shen=1}] run tellraw @s {"translate":"pl.info.se_in_resistance"}

execute if block -678 137 351 minecraft:dropper[block_entity_data={Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:zhan_hide_key"}}}]}] as @p[x=-678,y=138,z=351,distance=..4,scores={race=3,process_zhan_hide=6..}] unless entity @s[scores={finish_zhan_hide=1}] run function pld:system/truth/zhan/4/in_room

data merge block -678 137 351 {Items:{}}
