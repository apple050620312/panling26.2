##通用加工
#检查裝備更新
execute if score #updated int matches 1 unless data block ~ 255 ~ Items[0].tag.PLattributes run function pld:equipment_lock/enable/version_update/check
#如果是弓箭手武器，那么需要把物品换成bow&crossbow
execute if block ~ 255 ~ chest[block_entity_data={Items:[{id:"minecraft:wooden_pickaxe",components:{"minecraft:custom_data":{is_bow:1b}}}]}] run data modify block ~ 255 ~ Items[0].id set value "minecraft:bow"
execute if block ~ 255 ~ chest[block_entity_data={Items:[{id:"minecraft:wooden_pickaxe",components:{"minecraft:custom_data":{is_crossbow:1b}}}]}] run data modify block ~ 255 ~ Items[0].id set value "minecraft:crossbow"
#清理待激活裝備的附魔
data modify block ~ 255 ~ Items[0].tag.Enchantments set value []

#弩附魔
execute if block ~ 255 ~ chest[block_entity_data={Items:[{id:"minecraft:crossbow"}]}] run data modify block ~ 255 ~ Items[0].components."minecraft:enchantments"."minecraft:quick_charge" set value 2
execute if block ~ 255 ~ chest[block_entity_data={Items:[{id:"minecraft:crossbow"}]}] unless data block ~ 255 ~ {Items:[{components:{"minecraft:custom_data":{id:"panling:crossbow5"}}}]} run data modify block ~ 255 ~ Items[0].components."minecraft:enchantments"."minecraft:multishot" set value 1


#将裝備上的部分属性激活
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers set from block ~ 255 ~ Items[0].tag.attribute_to_enable

#根据裝備上的数据进行加工激活
execute positioned ~ 255 ~ run function pld:equipment_lock/enable/attribute_enable/check

#附灵属性激活
execute if block ~ 255 ~ chest[block_entity_data={Items:[{components:{"minecraft:custom_data":{type:1}}}]}] run function #pld:weapon_unlock/enchant
execute if block ~ 255 ~ chest[block_entity_data={Items:[{components:{"minecraft:custom_data":{type:2}}}]}] run function #pld:armor_unlock/enchant

execute if data block ~ 255 ~ Items[0].components."minecraft:custom_data"{type:1} store result score @s weapon_rare run data get block ~ 255 ~ Items[0].components."minecraft:custom_data".rare
execute if data block ~ 255 ~ Items[0].components."minecraft:custom_data"{type:1} store result score @s weapon_branch run data get block ~ 255 ~ Items[0].components."minecraft:custom_data".branch

#常驻属性激活
#data modify storage pld:system Temp set value {}
#data modify storage pld:system Temp set from block ~ 255 ~ Items[0]
#function pld:equipment_lock/enable/resident_attribute/check
function pld:equipment_lock/enable/resident_attribute/branch/check

#强化属性激活
execute if block ~ 255 ~ chest[block_entity_data={Items:[{components:{"minecraft:custom_data":{type:1}}}]}] run scoreboard players reset @s weapon_piercing_lvl
execute if block ~ 255 ~ chest[block_entity_data={Items:[{components:{"minecraft:custom_data":{type:1}}}]}] run scoreboard players reset @s weapon_arrow_crit
execute if block ~ 255 ~ chest[block_entity_data={Items:[{components:{"minecraft:custom_data":{type:1}}}]}] if data block ~ 255 ~ Items[0].components."minecraft:custom_data".enhance_lvl run function pld:equipment_lock/enable/enhance/check

#神器词条激活
execute if block ~ 255 ~ chest[block_entity_data={Items:[{components:{"minecraft:custom_data":{type:2}}}]}] if data block ~ 255 ~ Items[0].tag.legend_id run function pld:equipment_lock/enable/legend_id/check


#激活标记
data remove block ~ 255 ~ Items[0].components."minecraft:lore"[-1]
data modify block ~ 255 ~ Items[0].components."minecraft:lore" append value '{"translate":"pl.lore.weaponinfo2b"}'
execute if data block ~ 255 ~ Items[{components:{"minecraft:custom_data":{act:0}}}] run data modify block ~ 255 ~ Items[{components:{"minecraft:custom_data":{act:0}}}].tag.act set value 1


scoreboard players set @s success 1
