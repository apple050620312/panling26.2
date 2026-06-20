execute if block 84 44 170 hopper{Items:[{id:"minecraft:gold_ingot",components:{"minecraft:custom_data":{id:"panling:gold_ingot"}}}]} run tellraw @s {"translate": "pl.info.armor_stand5b"}
execute if block 84 44 170 hopper{Items:[{id:"minecraft:gold_ingot",Count:1b,components:{"minecraft:custom_data":{id:"panling:gold_ingot"}}}]} run give @s minecraft:nether_star[custom_name='{"translate":"pl.item.name.relifestone"}',custom_data={id:"panling:relive_stone"}]
execute if block 84 44 170 hopper{Items:[{id:"minecraft:gold_ingot",Count:2b,components:{"minecraft:custom_data":{id:"panling:gold_ingot"}}}]} run give @s minecraft:nether_star[custom_name='{"translate":"pl.item.name.relifestone"}',custom_data={id:"panling:relive_stone"}] 2

data merge block 84 44 170 {Items:}