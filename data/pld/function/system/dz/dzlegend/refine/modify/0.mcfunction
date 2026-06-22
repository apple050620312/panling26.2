#移除原有词条
data remove block ~ ~ ~ Items[{slot:5}].tag.display.Lore.[-5]
#lore
data modify block ~ ~ ~ Items[{slot:5}].tag.display.Lore insert -5 value '{"translate":"pl.item.lore.legend_0"}'
#legend_id
data modify block ~ ~ ~ Items[{slot:5}].tag.legend_id set value 0