data modify storage pld:system Temp_player_new_mails append value {sent:"天道",is_taked:0b,title:'{"translate":"pl.chest_menu.system_lost.name"}',content:['{"translate":"pl.chest_menu.system_lost.lore.a"}','{"translate":"pl.chest_menu.system_lost.lore.b"}'],attached_items:[]}

loot replace block 0 -1 0 container.0 loot pld:items/yy2

data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[0]

function pld:system/chest_menu/screen/3_mails/get_mails/personal

