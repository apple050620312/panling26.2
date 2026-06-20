tellraw @s[scores={supply5ticks=0..}] {"translate": "pl.info.supply_resistance0"}
execute store success score @s[scores={supply5ticks=-1}] success unless score #system supply_add_shen matches 1 run give @s minecraft:brick[minecraft:custom_model_data={floats:[1]},custom_name='{"translate":"pl.item.name.money0"}',lore=['{"translate":"pl.item.lore.money0a"}','{"translate":"pl.item.lore.money0b"}','{"translate":"pl.item.lore.money0c"}'],custom_data={id:"panling:money0"}]
execute store success score @s[scores={supply5ticks=-1}] success if score #system supply_add_shen matches 1 run give @s minecraft:brick[minecraft:custom_model_data={floats:[1]},custom_name='{"translate":"pl.item.name.money0"}',lore=['{"translate":"pl.item.lore.money0a"}','{"translate":"pl.item.lore.money0b"}','{"translate":"pl.item.lore.money0c"}'],custom_data={id:"panling:money0"}] 2

execute unless score #system supply_add_shen matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply0_a"}
execute unless score #system supply_add_shen matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply0"}
execute if score #system supply_add_shen matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply0_plenty_a"}
execute if score #system supply_add_shen matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply0_plenty"}


function pld:system/supply/supply_all