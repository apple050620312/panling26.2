loot spawn 1874 101 -1766 loot pld:pvp/pvp2/item
tag @e[type=item,x=1874,y=101,z=-1766,distance=..1] add item
execute if entity @e[limit=1,tag=item,nbt={Item:{id:"minecraft:snowball"}}] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:snowball",Count:1b,tag:{id:"panling:pvp2_sp_item1",sp_item:1,display:{Name:'{"translate":"pl.pvp.item.name.pvp2_item1"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.pvp2_item"}',]},HideFlags:63,Enchantments:[{id:"protection",lvl:1s}]}}}
execute if entity @e[limit=1,tag=item,nbt={Item:{id:"minecraft:fire_charge"}}] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:fire_charge",Count:1b,tag:{id:"panling:pvp2_sp_item2",sp_item:1,display:{Name:'{"translate":"pl.pvp.item.name.pvp2_item2"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.pvp2_item"}',]},HideFlags:63,Enchantments:[{id:"protection",lvl:1s}]}}}
execute if entity @e[limit=1,tag=item,nbt={Item:{id:"minecraft:white_dye"}}] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:white_dye",Count:1b,tag:{id:"panling:pvp2_sp_item3",sp_item:1,display:{Name:'{"translate":"pl.pvp.item.name.pvp2_item3"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.pvp2_item"}',]},HideFlags:63,Enchantments:[{id:"protection",lvl:1s}]}}}
kill @e[tag=item]

