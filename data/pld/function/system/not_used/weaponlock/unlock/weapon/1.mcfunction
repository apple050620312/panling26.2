execute if block ~ 255 ~ chest{Items:[{id:"minecraft:wooden_pickaxe",components:{"minecraft:custom_model_data":1}}]} run data modify block ~ 255 ~ Items[0].id set value "minecraft:bow"
execute if block ~ 255 ~ chest{Items:[{id:"minecraft:wooden_pickaxe",components:{"minecraft:custom_model_data":2}}]} run data modify block ~ 255 ~ Items[0].id set value "minecraft:crossbow"
execute if block ~ 255 ~ chest{Items:[{components:{"minecraft:custom_data":{act:1,modify:1}}}]} run data modify block ~ 255 ~ Items[{components:{"minecraft:custom_data":{act:1,modify:1}}}].tag.AttributeModifiers set value [{Slot:"mainhand",UUID:[I;5,5,5,6],Operation:0,AttributeName:"minecraft:attack_damage",Amount:0}]
function #pld:weapon_unlock/1

