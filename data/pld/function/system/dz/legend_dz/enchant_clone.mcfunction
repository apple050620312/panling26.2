#删除封印条目
data remove block ~ ~ ~ Items.[{slot:5}].tag.display.Lore.[-1]
#删除附灵条目
data remove block ~ ~ ~ Items.[{slot:5}].tag.display.Lore.[-1]
#复制附灵条目
data modify block ~ ~ ~ Items.[{slot:5}].tag.display.Lore append from block ~ ~ ~ Items.[{slot:3}].tag.display.Lore[-2] 
#复制附灵id
data modify block ~ ~ ~ Items.[{slot:5}].tag.enchant_id set from block ~ ~ ~ Items.[{slot:3}].tag.enchant_id 
data modify block ~ ~ ~ Items.[{slot:5}].tag.enchant_lvl set from block ~ ~ ~ Items.[{slot:3}].tag.enchant_lvl
#增加封印条目
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:5,components:{custom_data:{type:1}}}]} run data modify block ~ ~ ~ Items[{slot:5}].tag.display.Lore append value '{"translate":"pl.lore.weaponinfo2a"}'
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:5,components:{custom_data:{type:2}}}]} run data modify block ~ ~ ~ Items[{slot:5}].tag.display.Lore append value '{"translate":"pl.lore.armorinfo2a"}'
