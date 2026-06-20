# -8
#移除当前位置的内容
data remove block ~ ~ ~ Items[{Slot:3b}].tag.display.Lore.[-8]
#增加内容
data modify block ~ ~ ~ Items[{Slot:3b}].tag.display.Lore insert -8 from storage pld:system dzTemp