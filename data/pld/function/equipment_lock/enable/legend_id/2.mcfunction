#id2 天玑 最大生命值提升15%
execute if score #temp temp2 matches 0 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"head",UUID:[I;9,1,1,1],Operation:1,AttributeName:"minecraft:generic.max_health",Amount:0.15}
execute if score #temp temp2 matches 1 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"chest",UUID:[I;9,2,2,2],Operation:1,AttributeName:"minecraft:generic.max_health",Amount:0.15}
execute if score #temp temp2 matches 2 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"legs",UUID:[I;9,3,3,3],Operation:1,AttributeName:"minecraft:generic.max_health",Amount:0.15}
execute if score #temp temp2 matches 3 run data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"feet",UUID:[I;9,4,4,4],Operation:1,AttributeName:"minecraft:generic.max_health",Amount:0.15}
