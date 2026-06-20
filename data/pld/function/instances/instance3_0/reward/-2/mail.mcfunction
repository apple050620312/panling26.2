data modify storage pld:system Temp_player_new_mails append value {sent:"天道",is_taked:0b,title:'[{"translate":"pl.chest_menu.system_lost.name"},{"text":"(1/2)","color":"aqua"}]',content:['{"translate":"pl.chest_menu.system_lost.lore.a"}','{"translate":"pl.chest_menu.system_lost.lore.b"}'],attached_items:[]}

loot replace block 0 -1 0 container.0 loot pld:items/weapon_core_4
loot replace block 0 -1 0 container.1 loot pld:items/yy2
data modify block 0 -1 0 Items[1].count set value 2b
loot replace block 0 -1 0 container.2 loot pld:items/metal
data modify block 0 -1 0 Items[2].count set value 10b
loot replace block 0 -1 0 container.3 loot pld:items/wood
data modify block 0 -1 0 Items[3].count set value 10b
loot replace block 0 -1 0 container.4 loot pld:items/water
data modify block 0 -1 0 Items[4].count set value 10b

data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[0]
data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[1]
data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[2]
data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[3]
data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[4]

data modify storage pld:system Temp_player_new_mails append value {sent:"天道",is_taked:0b,title:'[{"translate":"pl.chest_menu.system_lost.name"},{"text":"(2/2)","color":"aqua"}]',content:['{"translate":"pl.chest_menu.system_lost.lore.a"}','{"translate":"pl.chest_menu.system_lost.lore.b"}'],attached_items:[]}
loot replace block 0 -1 0 container.0 loot pld:items/fire
data modify block 0 -1 0 Items[0].count set value 10b
loot replace block 0 -1 0 container.1 loot pld:items/earth
data modify block 0 -1 0 Items[1].count set value 10b

data modify storage pld:system Temp_player_new_mails[1].attached_items append from block 0 -1 0 Items[0]
data modify storage pld:system Temp_player_new_mails[1].attached_items append from block 0 -1 0 Items[1]


function pld:system/chest_menu/screen/3_mails/get_mails/personal

