execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{id:"panling:armor_core_52"}}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.acore52"}'}
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{id:"panling:armor_core_52"}}}}] run loot give @p[scores={success=1}] loot pld:items/armor_core_52
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{id:"panling:armor_core_52"}}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.goldchest_open"},{"translate":"pl.item.name.acore52"}]}
