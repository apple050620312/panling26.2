tellraw @s[scores={supply5ticks=0..}] {"translate": "pl.info.supply_resistance3"}
execute store success score @s[scores={supply5ticks=-1}] success unless score #system supply_add_zhan matches 1 run give @s minecraft:brick[custom_model_data=4,custom_name='{"translate":"pl.item.name.money3"}',lore=['{"translate":"pl.item.lore.money3a"}','{"translate":"pl.item.lore.money3b"}','{"translate":"pl.item.lore.money3c"}'],custom_data={id:"panling:money3"}]
execute store success score @s[scores={supply5ticks=-1}] success if score #system supply_add_zhan matches 1 run give @s minecraft:brick[custom_model_data=4,custom_name='{"translate":"pl.item.name.money3"}',lore=['{"translate":"pl.item.lore.money3a"}','{"translate":"pl.item.lore.money3b"}','{"translate":"pl.item.lore.money3c"}'],custom_data={id:"panling:money3"}] 2

execute unless score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3_a"}
execute unless score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3"}
execute if score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3_plenty_a"}
execute if score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3_plenty"}

function pld:system/supply/supply_all