loot spawn 3140 115 -1827 loot pld:instance5/light
execute if entity @e[x=3140,y=115,z=-1827,distance=..5,type=item,nbt={Item:{id:"minecraft:white_wool"}}] run function pld:instances/instance5/light/left
execute if entity @e[x=3140,y=115,z=-1827,distance=..5,type=item,nbt={Item:{id:"minecraft:black_wool"}}] run function pld:instances/instance5/light/right
kill @e[x=3140,y=115,z=-1827,distance=..5,type=item,nbt={Item:{id:"minecraft:white_wool"}}]
