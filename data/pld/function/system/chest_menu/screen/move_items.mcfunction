#将玩家的末影箱内容储存到箱子菜单的首个箱子中
data modify storage pld:system enderitems_temp1 set from entity @s EnderItems
data modify storage pld:system enderitems_temp2 set value []
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{slot:0}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{slot:8}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{slot:9}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{slot:17}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{slot:18}]
data modify storage pld:system enderitems_temp2 append from storage pld:system enderitems_temp1[{slot:26}]
data remove storage pld:system enderitems_temp1[{slot:0}]
data remove storage pld:system enderitems_temp1[{slot:8}]
data remove storage pld:system enderitems_temp1[{slot:9}]
data remove storage pld:system enderitems_temp1[{slot:17}]
data remove storage pld:system enderitems_temp1[{slot:18}]
data remove storage pld:system enderitems_temp1[{slot:26}]
data modify storage pld:system enderitems_temp2[{slot:0}].Slot set value 1b
data modify storage pld:system enderitems_temp2[{slot:8}].Slot set value 2b
data modify storage pld:system enderitems_temp2[{slot:9}].Slot set value 3b
data modify storage pld:system enderitems_temp2[{slot:17}].Slot set value 4b
data modify storage pld:system enderitems_temp2[{slot:18}].Slot set value 5b
data modify storage pld:system enderitems_temp2[{slot:26}].Slot set value 6b

data modify storage pld:system data_temp set value {chests:[{slot:0,pages:{page1_Items:[],page2_Items:[]}}],mails:[]}
data modify storage pld:system data_temp.chests[{slot:0}].pages.page1_Items set from storage pld:system enderitems_temp1
data modify storage pld:system data_temp.chests[{slot:0}].pages.page2_Items set from storage pld:system enderitems_temp2

