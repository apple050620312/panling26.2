#获取被升阶裝備的附灵并复制到新裝備中
execute if data block ~ ~ ~ Items[{slot:3}].tag.enchant_id run function pld:system/dz/legend_dz/enchant_clone

#清理其他位置的东西
data modify block ~ ~ ~ Items[{slot:0}] set value {}
data modify block ~ ~ ~ Items[{slot:3}] set value {}
data modify block ~ ~ ~ Items[{slot:6}] set value {}

