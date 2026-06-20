tellraw @s[scores={supply5ticks=0..}] {"translate": "pl.info.supply_resistance4"}
execute store success score @s[scores={supply5ticks=-1}] success unless score #system supply_add_ren matches 1 run give @s minecraft:brick[minecraft:custom_model_data={floats:[5]},custom_name='{"translate":"pl.item.name.money4"}',lore=['{"translate":"pl.item.lore.money4a"}','{"translate":"pl.item.lore.money4b"}','{"translate":"pl.item.lore.money4c"}'],custom_data={id:"panling:money4"}]
execute store success score @s[scores={supply5ticks=-1}] success if score #system supply_add_ren matches 1 run give @s minecraft:brick[minecraft:custom_model_data={floats:[5]},custom_name='{"translate":"pl.item.name.money4"}',lore=['{"translate":"pl.item.lore.money4a"}','{"translate":"pl.item.lore.money4b"}','{"translate":"pl.item.lore.money4c"}'],custom_data={id:"panling:money4"}] 2

execute unless score #system supply_add_ren matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply4_a"}
execute unless score #system supply_add_ren matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply4"}
execute if score #system supply_add_ren matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply4_plenty_a"}
execute if score #system supply_add_ren matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply4_plenty"}

function pld:system/supply/supply_all