#移除原有词条
data remove block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore.[-5]
#lore
data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore insert -5 value '{"translate":"pl.item.lore.legend_0"}'
#legend_id
data modify block ~ ~ ~ Items[{Slot:5b}].tag.legend_id set value 0