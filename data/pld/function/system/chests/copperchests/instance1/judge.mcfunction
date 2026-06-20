data merge entity @s {PickupDelay:32767,Age:4800,Motion:[0.0,0.0,0.0],CustomNameVisible:1b}
execute if entity @s[nbt={Item:{tag:{id:"panling:armor_core_5"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.acore5"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:armor_core_5"}}}] run give @p[scores={success=1}] minecraft:iron_nugget{display:{Lore:['{"translate":"pl.lore.rare5"}','{"translate":"pl.item.lore.acore5a"}','{"translate":"pl.item.lore.acore5b"}'],Name:'{"translate":"pl.item.name.acore5"}'},id:"panling:armor_core_5",HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:1s}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:armor_core_5"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.acore5"}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:yy2"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.yy2"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:yy2"}}}] run give @p[scores={success=1}] minecraft:poisonous_potato{display:{Lore:['{"translate":"pl.item.lore.yy"}'],Name:'{"translate":"pl.item.name.yy2"}'},id:"panling:yy2"} 4
execute if entity @s[nbt={Item:{tag:{id:"panling:yy2"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.yy2"},{"text": "X4","color":"white"}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:silverkey"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.silverkey"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:silverkey"}}}] run loot give @p[scores={success=1}] loot pld:items/silverkey
execute if entity @s[nbt={Item:{tag:{id:"panling:silverkey"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.silverkey"}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:metal"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.metal"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:metal"}}}] run give @p[scores={success=1}] minecraft:emerald{id:"panling:metal",display:{Name:'{"translate":"pl.item.name.metal"}'}} 20
execute if entity @s[nbt={Item:{tag:{id:"panling:metal"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.metal"},{"text": "X20","color":"white"}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:wood"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.wood"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:wood"}}}] run give @p[scores={success=1}] minecraft:bone{id:"panling:wood",display:{Name:'{"translate":"pl.item.name.wood"}'}} 20
execute if entity @s[nbt={Item:{tag:{id:"panling:wood"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.wood"},{"text": "X20","color":"white"}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:water"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.water"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:water"}}}] run give @p[scores={success=1}] minecraft:string{id:"panling:water",display:{Name:'{"translate":"pl.item.name.water"}'}} 20
execute if entity @s[nbt={Item:{tag:{id:"panling:water"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.water"},{"text": "X20","color":"white"}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:fire"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.fire"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:fire"}}}] run give @p[scores={success=1}] minecraft:blaze_rod{id:"panling:fire",display:{Name:'{"translate":"pl.item.name.fire"}'}} 20
execute if entity @s[nbt={Item:{tag:{id:"panling:fire"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.fire"},{"text": "X20","color":"white"}]}
execute if entity @s[nbt={Item:{tag:{id:"panling:earth"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.earth"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:earth"}}}] run give @p[scores={success=1}] minecraft:magma_cream{id:"panling:earth",display:{Name:'{"translate":"pl.item.name.earth"}'}} 20
execute if entity @s[nbt={Item:{tag:{id:"panling:earth"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.earth"},{"text": "X20","color":"white"}]}

execute if entity @s[nbt={Item:{tag:{id:"panling:enchant_stonepart"}}}] run data merge entity @s {CustomName:'{"translate":"pl.item.name.enchant_stonepart"}'}
execute if entity @s[nbt={Item:{tag:{id:"panling:enchant_stonepart"}}}] run give @p[scores={success=1}] minecraft:light_gray_dye{HideFlags:63,id:"panling:enchant_stonepart",display:{Name:'{"translate":"pl.item.name.enchant_stonepart"}',Lore:['{"translate":"pl.item.lore.enchant_stoneparta"}','{"translate":"pl.item.lore.enchant_stonepartb"}']},Enchantments:[{id:"minecraft:protection",lvl:1s}]} 4
execute if entity @s[nbt={Item:{tag:{id:"panling:enchant_stonepart"}}}] run tellraw @p[scores={success=1}] {"text": "","extra": [{"translate": "pl.info.copperchest_open"},{"translate":"pl.item.name.enchant_stonepart"},{"text": "X4","color":"white"}]}
