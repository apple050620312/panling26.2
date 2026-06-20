execute if entity @s[nbt={Item:{tag:{id:"panling:armor_core_5"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.acore5"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:armor_core_5"}}}] run give @p[scores={success=1}] minecraft:iron_nugget{display:{Lore:['{"translate":"pl.lore.rare5"}','{"translate":"pl.item.lore.acore5a"}','{"translate":"pl.item.lore.acore5b"}'],Name:'{"translate":"pl.item.name.acore5"}'},id:"panling:armor_core_5",HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1s}]} 2
execute if entity @s[nbt={Item:{tag:{id:"panling:armor_core_5"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.goldchest_open"},{"translate":"pl.item.name.acore5"},{"text": "X2","color":"white"}]}


