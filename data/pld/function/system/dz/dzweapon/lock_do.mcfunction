#关闭激活
data remove block ~ ~ ~ Items[{tag:{act:1}}].tag.Enchantments
data remove block ~ ~ ~ Items[{tag:{act:1}}].tag.display.Lore[-1]
execute if data block ~ ~ ~ {Items:[{tag:{act:1}}]} run data modify block ~ ~ ~ Items[{tag:{act:1}}].tag.AttributeModifiers set value [{Slot:"mainhand",UUID:[I;5,5,5,6],Operation:0,AttributeName:"minecraft:generic.attack_damage",Amount:0},{Slot:"mainhand",UUID:[I;1,1,1,9],Operation:0,AttributeName:"minecraft:generic.armor",Amount:0}]
execute if data block ~ ~ ~ {Items:[{tag:{act:1}}]} run data modify block ~ ~ ~ Items[{tag:{act:1}}].tag.display.Lore append value '{"translate":"pl.lore.weaponinfo2a"}'
#弓弩锁定
#execute if data block ~ ~ ~ {Items:[{id:"minecraft:bow",tag:{act:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:bow",tag:{act:1}}].tag.CustomModelData set value 1
execute if data block ~ ~ ~ {Items:[{id:"minecraft:bow",tag:{act:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:bow",tag:{act:1}}].id set value "minecraft:wooden_pickaxe"
#execute if data block ~ ~ ~ {Items:[{id:"minecraft:crossbow",tag:{act:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:crossbow",tag:{act:1}}].tag.CustomModelData set value 2
execute if data block ~ ~ ~ {Items:[{id:"minecraft:crossbow",tag:{act:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:crossbow",tag:{act:1}}].id set value "minecraft:wooden_pickaxe"
#act标签
execute if data block ~ ~ ~ {Items:[{tag:{act:1}}]} run data modify block ~ ~ ~ Items[{tag:{act:1}}].tag.act set value 0


