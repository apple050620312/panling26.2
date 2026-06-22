#删除封印条目
data remove block ~ ~ ~ Items.[{slot:3}].tag.display.Lore.[-1]
#激活条目
execute if block ~ ~ ~ minecraft:dispenser{Items:[{slot:3,components:{custom_data:{type:1}}}]} run data modify block ~ ~ ~ Items[{slot:3}].tag.display.Lore append value '{"translate":"pl.lore.weaponinfo2b"}'