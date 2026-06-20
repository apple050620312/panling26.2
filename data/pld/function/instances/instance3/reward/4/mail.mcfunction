data modify storage pld:system Temp_player_new_mails append value {sent:"天道",is_taked:0b,title:'{"translate":"pl.chest_menu.system_lost.name"}',content:['{"translate":"pl.chest_menu.system_lost.lore.a"}','{"translate":"pl.chest_menu.system_lost.lore.b"}'],attached_items:}

loot replace block 0 -1 0 container.0 loot pld:items/armor_core_3
loot replace block 0 -1 0 container.1 loot pld:items/yy1
loot replace block 0 -1 0 container.2 loot pld:items/wood
data modify block 0 -1 0 Items[2].Count set value 5b
loot replace block 0 -1 0 container.3 loot pld:items/fire
data modify block 0 -1 0 Items[3].Count set value 5b

data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[0]
data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[1]
data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[2]
data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[3]

function pld:system/chest_menu/screen/3_mails/get_mails/personal

