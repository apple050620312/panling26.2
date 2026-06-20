execute if entity @s[nbt={Item:{components:{custom_data:{id:"panling:weapon_core_5"}}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.wcore5"}'}
execute if entity @s[nbt={Item:{components:{custom_data:{id:"panling:weapon_core_5"}}}}] run loot give @p[scores={success=1}] loot pld:items/weapon_core_5
execute if entity @s[nbt={Item:{components:{custom_data:{id:"panling:weapon_core_5"}}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.goldchest_open"},{"translate":"pl.item.name.wcore5"}]}
