##通用加工
#检查装备更新
execute if score #updated int matches 1 unless data block ~ 255 ~ Items[0].tag.PLattributes run function pld:equipment_lock/enable/version_update/check
#如果是弓箭手武器，那么需要把物品换成bow&crossbow
execute if block ~ 255 ~ chest{Items:[{id:"minecraft:wooden_pickaxe",tag:{is_bow:1b}}]} run data modify block ~ 255 ~ Items[0].id set value "minecraft:bow"
execute if block ~ 255 ~ chest{Items:[{id:"minecraft:wooden_pickaxe",tag:{is_crossbow:1b}}]} run data modify block ~ 255 ~ Items[0].id set value "minecraft:crossbow"
#清理待激活裝備的附魔
data modify block ~ 255 ~ Items[0].tag.Enchantments set value []

#弩附魔
execute if block ~ 255 ~ chest{Items:[{id:"minecraft:crossbow"}]} run data modify block ~ 255 ~ Items[0].tag.Enchantments append value {id:"minecraft:quick_charge",lvl:2s}
execute if block ~ 255 ~ chest{Items:[{id:"minecraft:crossbow"}]} unless data block ~ 255 ~ {Items:[{tag:{id:"panling:crossbow5"}}]} run data modify block ~ 255 ~ Items[0].tag.Enchantments append value {id:"minecraft:multishot",lvl:1s}


#将装备上的部分属性激活
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers set from block ~ 255 ~ Items[0].tag.attribute_to_enable

#根据装备上的数据进行加工激活
execute positioned ~ 255 ~ run function pld:equipment_lock/enable/attribute_enable/check

#附灵属性激活
execute if block ~ 255 ~ chest{Items:[{tag:{type:1}}]} run function #pld:weapon_unlock/enchant
execute if block ~ 255 ~ chest{Items:[{tag:{type:2}}]} run function #pld:armor_unlock/enchant

execute if data block ~ 255 ~ Items[0].tag{type:1} store result score @s weapon_rare run data get block ~ 255 ~ Items[0].tag.rare
execute if data block ~ 255 ~ Items[0].tag{type:1} store result score @s weapon_branch run data get block ~ 255 ~ Items[0].tag.branch

#常驻属性激活
#data modify storage pld:system Temp set value {}
#data modify storage pld:system Temp set from block ~ 255 ~ Items[0]
#function pld:equipment_lock/enable/resident_attribute/check
function pld:equipment_lock/enable/resident_attribute/branch/check

#强化属性激活
execute if block ~ 255 ~ chest{Items:[{tag:{type:1}}]} run scoreboard players reset @s weapon_piercing_lvl
execute if block ~ 255 ~ chest{Items:[{tag:{type:1}}]} run scoreboard players reset @s weapon_arrow_crit
execute if block ~ 255 ~ chest{Items:[{tag:{type:1}}]} if data block ~ 255 ~ Items[0].tag.enhance_lvl run function pld:equipment_lock/enable/enhance/check

#神器词条激活
execute if block ~ 255 ~ chest{Items:[{tag:{type:2}}]} if data block ~ 255 ~ Items[0].tag.legend_id run function pld:equipment_lock/enable/legend_id/check


#激活标记
data remove block ~ 255 ~ Items[0].tag.display.Lore[-1]
data modify block ~ 255 ~ Items[0].tag.display.Lore append value '{"translate":"pl.lore.weaponinfo2b"}'
execute if data block ~ 255 ~ Items[{tag:{act:0}}] run data modify block ~ 255 ~ Items[{tag:{act:0}}].tag.act set value 1


scoreboard players set @s success 1
