#删除封印条目
data remove block ~ ~ ~ Items.[{Slot:3b}].tag.display.Lore.[-1]
#激活条目
execute if block ~ ~ ~ minecraft:dispenser[block_entity_data={Items:[{Slot:3b,components:{"minecraft:custom_data":{type:1}}}]}] run data modify block ~ ~ ~ Items[{Slot:3b}].tag.display.Lore append value '{"translate":"pl.lore.weaponinfo2b"}'