# -7
#移除当前位置的内容
data remove block ~ ~ ~ Items[{slot:3}].tag.display.Lore.[-7]
#增加内容
data modify block ~ ~ ~ Items[{slot:3}].tag.display.Lore insert -7 from storage pld:system dzTemp