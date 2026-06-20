#获取被升阶装备的附灵并复制到新装备中
execute if data block ~ ~ ~ Items[{Slot:3b}].tag.enchant_id run function pld:system/dz/legend_dz/enchant_clone

#清理其他位置的东西
data modify block ~ ~ ~ Items[{Slot:0b}] set value {}
data modify block ~ ~ ~ Items[{Slot:3b}] set value {}
data modify block ~ ~ ~ Items[{Slot:6b}] set value {}

