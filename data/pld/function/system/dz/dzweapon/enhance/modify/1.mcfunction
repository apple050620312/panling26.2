# -6
#移除当前位置的内容
data remove block ~ ~ ~ Items[{slot:6}].tag.display.Lore.[-6]
#增加内容
data modify block ~ ~ ~ Items[{slot:6}].tag.display.Lore insert -6 from storage pld:system dzTemp