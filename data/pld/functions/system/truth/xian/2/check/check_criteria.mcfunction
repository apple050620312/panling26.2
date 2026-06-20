#检查背包是否有物品
execute unless entity @s[nbt={Inventory:[{tag:{id:"panling:xian_hide_item1"}}]}] run tellraw @s {"translate":"pl.info.xian.hide.resis2"}
execute if entity @s[nbt={Inventory:[{tag:{id:"panling:xian_hide_item1"}}]}] run function pld:system/truth/xian/2/main