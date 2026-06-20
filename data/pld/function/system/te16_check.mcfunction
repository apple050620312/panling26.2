execute if block -321 114 -424 minecraft:dropper{Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:te32"}}}] as @s} run function pld:system/te32/in
execute if block -321 114 -424 minecraft:dropper{Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:te2"}}}] as @s} run function pld:system/te17/in_check
execute if block -321 114 -424 minecraft:dropper{Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:te3"}}}] as @s} run function pld:system/te17/in_check
execute if block -321 114 -424 minecraft:dropper{Items:[{Slot:0b,components:{"minecraft:custom_data":{id:"panling:xian_hide_key"}}}] as @s[scores={race=2,process_xian_hide=8..}] unless entity @s[scores={finish_xian_hide=1}]} run function pld:system/truth/xian/5/in_room



data merge block -321 114 -424 {Items:[]}
data merge block -321 115 -424 {Items:[]}
