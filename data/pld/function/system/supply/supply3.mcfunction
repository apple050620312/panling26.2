tellraw @s[scores={supply5ticks=0..}] {"translate": "pl.info.supply_resistance3"}
execute store success score @s[scores={supply5ticks=-1}] success unless score #system supply_add_zhan matches 1 run give @s minecraft:brick{CustomModelData:4,id:"panling:money3",display:{Name:'{"translate":"pl.item.name.money3"}',Lore:['{"translate":"pl.item.lore.money3a"}','{"translate":"pl.item.lore.money3b"}','{"translate":"pl.item.lore.money3c"}']}}
execute store success score @s[scores={supply5ticks=-1}] success if score #system supply_add_zhan matches 1 run give @s minecraft:brick{CustomModelData:4,id:"panling:money3",display:{Name:'{"translate":"pl.item.name.money3"}',Lore:['{"translate":"pl.item.lore.money3a"}','{"translate":"pl.item.lore.money3b"}','{"translate":"pl.item.lore.money3c"}']}} 2

execute unless score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3_a"}
execute unless score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3"}
execute if score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3_plenty_a"}
execute if score #system supply_add_zhan matches 1 run tellraw @s[scores={success=1}] {"translate": "pl.info.supply3_plenty"}

function pld:system/supply/supply_all