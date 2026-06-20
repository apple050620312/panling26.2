execute if block ~ 255 ~ chest{Items:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:1}}]} run data modify block ~ 255 ~ Items[0].id set value "minecraft:bow"
execute if block ~ 255 ~ chest{Items:[{id:"minecraft:wooden_pickaxe",tag:{CustomModelData:2}}]} run data modify block ~ 255 ~ Items[0].id set value "minecraft:crossbow"
execute if block ~ 255 ~ chest{Items:[{tag:{act:1,modify:1}}]} run data modify block ~ 255 ~ Items[{tag:{act:1,modify:1}}].tag.AttributeModifiers set value [{Slot:"mainhand",UUID:[I;5,5,5,6],Operation:0,AttributeName:"minecraft:generic.attack_damage",Amount:0}]
function #pld:weapon_unlock/1

