#附灵条目 pld:system dzTemp1
#附灵id pld:system dzTemp2  enchant_id
#附灵lvl pld:system dzTemp3 enchant_lvl

#删除封印条目
data remove block ~ ~ ~ Items.[{Slot:5b}].tag.display.Lore.[-1]
#删除结尾条目
data remove block ~ ~ ~ Items.[{Slot:5b}].tag.display.Lore.[-1]

#删除附灵条目
data remove block ~ ~ ~ Items.[{Slot:5b}].tag.display.Lore.[-1]
#复制附灵条目
data modify block ~ ~ ~ Items.[{Slot:5b}].tag.display.Lore append from storage pld:system dzTemp1
#复制附灵id
data modify block ~ ~ ~ Items.[{Slot:5b}].tag.enchant_id set from storage pld:system dzTemp2
data modify block ~ ~ ~ Items.[{Slot:5b}].tag.enchant_lvl set from storage pld:system dzTemp3


#增加结尾条目
data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"translate":"pl.lore.weapon_end"}'
#增加封印条目
execute if block ~ ~ ~ minecraft:dispenser[custom_data={Items:[{Slot:5b,components:{"minecraft:custom_data":{type:2}}}]}] run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"translate":"pl.lore.armorinfo2a"}'


