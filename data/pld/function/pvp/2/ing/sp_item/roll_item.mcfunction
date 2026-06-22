loot spawn 1874 101 -1766 loot pld:pvp/pvp2/item
tag @e[type=item,x=1874,y=101,z=-1766,distance=..1] add item
execute if entity @e[limit=1,tag=item,nbt={Item:{id:"minecraft:snowball"}}] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:snowball",count:1,components:{lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.pvp2_item"}'],enchantments:{levels:{"protection":1}},custom_data:{id:"panling:pvp2_sp_item1",sp_item:1}}}}
execute if entity @e[limit=1,tag=item,nbt={Item:{id:"minecraft:fire_charge"}}] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:fire_charge",count:1,components:{lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.pvp2_item"}'],enchantments:{levels:{"protection":1}},custom_data:{id:"panling:pvp2_sp_item2",sp_item:1}}}}
execute if entity @e[limit=1,tag=item,nbt={Item:{id:"minecraft:white_dye"}}] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:white_dye",count:1,components:{lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.pvp2_item"}'],enchantments:{levels:{"protection":1}},custom_data:{id:"panling:pvp2_sp_item3",sp_item:1}}}}
kill @e[tag=item]

