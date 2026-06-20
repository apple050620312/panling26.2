#id0 天枢 盔甲韧性+2
execute if score #temp temp2 matches 0 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"head",UUID:[I;9,1,1,1],Operation:0,AttributeName:"minecraft:generic.armor_toughness",Amount:2}
execute if score #temp temp2 matches 1 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"chest",UUID:[I;9,2,2,2],Operation:0,AttributeName:"minecraft:generic.armor_toughness",Amount:2}
execute if score #temp temp2 matches 2 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"legs",UUID:[I;9,3,3,3],Operation:0,AttributeName:"minecraft:generic.armor_toughness",Amount:2}
execute if score #temp temp2 matches 3 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"feet",UUID:[I;9,4,4,4],Operation:0,AttributeName:"minecraft:generic.armor_toughness",Amount:2}
