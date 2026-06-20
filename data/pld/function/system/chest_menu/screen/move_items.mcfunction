#将玩家的末影箱内容储存到箱子菜单的首个箱子中
data modify storage pld:system enderitems_temp1 set from entity @s EnderItems
data modify storage pld:system enderitems_temp2 set value 
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{Slot:0b}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{Slot:8b}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{Slot:9b}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{Slot:17b}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{Slot:18b}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{Slot:26b}]
data remove storage pld:system enderitems_temp1[{Slot:0b}]
data remove storage pld:system enderitems_temp1[{Slot:8b}]
data remove storage pld:system enderitems_temp1[{Slot:9b}]
data remove storage pld:system enderitems_temp1[{Slot:17b}]
data remove storage pld:system enderitems_temp1[{Slot:18b}]
data remove storage pld:system enderitems_temp1[{Slot:26b}]
data modify storage pld:system enderitems_temp2[{Slot:0b}].Slot set value 1b
data modify storage pld:system enderitems_temp2[{Slot:8b}].Slot set value 2b
data modify storage pld:system enderitems_temp2[{Slot:9b}].Slot set value 3b
data modify storage pld:system enderitems_temp2[{Slot:17b}].Slot set value 4b
data modify storage pld:system enderitems_temp2[{Slot:18b}].Slot set value 5b
data modify storage pld:system enderitems_temp2[{Slot:26b}].Slot set value 6b

data modify storage pld:system data_temp set value {chests:[{Slot:0b,pages:{page1_Items:,page2_Items:}}],mails:}
data modify storage pld:system data_temp.chests[{Slot:0b}].pages.page1_Items set from storage pld:system enderitems_temp1
data modify storage pld:system data_temp.chests[{Slot:0b}].pages.page2_Items set from storage pld:system enderitems_temp2

