tellraw @s[scores={supply5ticks=0..}] {"translate": "pl.info.supply_resistance1"}
execute store success score @s[scores={supply5ticks=-1}] success unless score #system supply_add_yao matches 1 run give @s minecraft:brick[custom_model_data=2,custom_name='{"translate":"pl.item.name.money1"}',lore=['{"translate":"pl.item.lore.money1a"}','{"translate":"pl.item.lore.money1b"}','{"translate":"pl.item.lore.money1c"}'],custom_data={id:"panling:money1"}]
execute store success score @s[scores={supply5ticks=-1}] success if score #system supply_add_yao matches 1 run give @s minecraft:brick[custom_model_data=2,custom_name='{"translate":"pl.item.name.money1"}',lore=['{"translate":"pl.item.lore.money1a"}','{"translate":"pl.item.lore.money1b"}','{"translate":"pl.item.lore.money1c"}'],custom_data={id:"panling:money1"}] 2

execute unless score #system supply_add_yao matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply1_a"}
execute unless score #system supply_add_yao matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply1"}
execute if score #system supply_add_yao matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply1_plenty_a"}
execute if score #system supply_add_yao matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply1_plenty"}

function pld:system/supply/supply_all