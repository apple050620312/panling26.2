execute if entity @s[nbt={Item:{components:{custom_data:{id:"panling:armor_core_5"}}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.acore5"}'}
execute if entity @s[nbt={Item:{components:{custom_data:{id:"panling:armor_core_5"}}}}] run give @p[scores={success=1}] minecraft:iron_nugget[custom_name='{"translate":"pl.item.name.acore5"}',lore=['{"translate":"pl.lore.rare5"}','{"translate":"pl.item.lore.acore5a"}','{"translate":"pl.item.lore.acore5b"}'],minecraft:enchantments={minecraft:protection:1},custom_data={id:"panling:armor_core_5"}] 2
execute if entity @s[nbt={Item:{components:{custom_data:{id:"panling:armor_core_5"}}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.goldchest_open"},{"translate":"pl.item.name.acore5"},{"text": "X2","color":"white"}]}


