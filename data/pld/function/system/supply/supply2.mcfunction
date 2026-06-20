tellraw @s[scores={supply5ticks=0..}] {"translate": "pl.info.supply_resistance2"}
execute store success score @s[scores={supply5ticks=-1}] success unless score #system supply_add_xian matches 1 run give @s minecraft:brick[minecraft:custom_model_data={floats:[3]},custom_name='{"translate":"pl.item.name.money2"}',lore=['{"translate":"pl.item.lore.money2a"}','{"translate":"pl.item.lore.money2b"}','{"translate":"pl.item.lore.money2c"}'],custom_data={id:"panling:money2"}]
execute store success score @s[scores={supply5ticks=-1}] success if score #system supply_add_xian matches 1 run give @s minecraft:brick[minecraft:custom_model_data={floats:[3]},custom_name='{"translate":"pl.item.name.money2"}',lore=['{"translate":"pl.item.lore.money2a"}','{"translate":"pl.item.lore.money2b"}','{"translate":"pl.item.lore.money2c"}'],custom_data={id:"panling:money2"}] 2

execute unless score #system supply_add_xian matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply2_a"}
execute unless score #system supply_add_xian matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply2"}
execute if score #system supply_add_xian matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply2_plenty_a"}
execute if score #system supply_add_xian matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply2_plenty"}

function pld:system/supply/supply_all