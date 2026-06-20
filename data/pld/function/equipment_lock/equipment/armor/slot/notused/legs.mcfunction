#复制物品
data modify block ~ 255 ~ Items[0].id set from entity @s Inventory[{Slot:101b}].id
data modify block ~ 255 ~ Items[0].tag set from entity @s Inventory[{Slot:101b}].tag

#特殊加工
execute if block ~ 255 ~ chest[block_entity_data={Items:[{components:{"minecraft:custom_data":{act:1,modify:1}}}]}] run data modify block ~ 255 ~ Items[{components:{"minecraft:custom_data":{act:1,modify:1}}}].tag.AttributeModifiers set value [{Slot:"mainhand",UUID:[I;1,2,3,4],Operation:0,AttributeName:"minecraft:generic.armor",Amount:0}]

#基础属性加工
execute as @s[scores={job=0}] run function #pld:armor_unlock/0/legs
execute as @s[scores={job=1}] run function #pld:armor_unlock/1/legs
execute as @s[scores={job=2}] run function #pld:armor_unlock/2/legs
execute as @s[nbt={Inventory:[{Slot:101b,components:{"minecraft:custom_data":{limit:3}}}]}] run function #pld:armor_unlock/3/legs

#通用加工
#附灵属性
execute if entity @s[scores={success=1}] run function #pld:armor_unlock/enchant

#激活标记
execute if entity @s[scores={success=1}] run data remove block ~ 255 ~ Items[0].components."minecraft:lore"[-1]
execute if entity @s[scores={success=1}] run data modify block ~ 255 ~ Items[0].components."minecraft:lore" append value '{"translate":"pl.lore.weaponinfo2b"}'
execute if entity @s[scores={success=1}] run execute if data block ~ 255 ~ Items[{components:{"minecraft:custom_data":{act:0}}}] run data modify block ~ 255 ~ Items[{components:{"minecraft:custom_data":{act:0}}}].tag.act set value 1
#覆盖
#loot replace entity @s armor.legs 1 mine ~ 255 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
#item entity @s armor.legs copy block ~ 255 ~ container.0
item replace entity @s armor.legs from block ~ 255 ~ container.0
scoreboard players set @s success 0