loot spawn 1868 101 -1826 loot pld:pvp/pvp2/item_pos
tag @e[type=item,x=1868,y=101,z=-1826,distance=..1] add item_pos
execute if entity @e[limit=1,tag=item_pos,nbt={Item:{id:"minecraft:oak_log"}}] positioned 1887 107 -1844 run function pld:pvp/2/ing/sp_item/roll_item
execute if entity @e[limit=1,tag=item_pos,nbt={Item:{id:"minecraft:oak_leaves"}}] positioned 1866 107 -1830 run function pld:pvp/2/ing/sp_item/roll_item
execute if entity @e[limit=1,tag=item_pos,nbt={Item:{id:"minecraft:stone_brick_slab"}}] positioned 1883 107 -1792 run function pld:pvp/2/ing/sp_item/roll_item
execute if entity @e[limit=1,tag=item_pos,nbt={Item:{id:"minecraft:stone_bricks"}}] positioned 1866 107 -1768 run function pld:pvp/2/ing/sp_item/roll_item
kill @e[tag=item_pos]

