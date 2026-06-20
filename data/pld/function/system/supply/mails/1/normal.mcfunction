data modify storage pld:system Temp_player_new_mails append value {sent:"§b补给品管理人-胡离",is_taked:0b,title:'{"translate":"pl.mail.supply.name"}',content:['{"translate":"pl.mail.supply.lore.a"}','{"translate":"pl.mail.supply.lore.b"}','{"translate":"pl.mail.supply.lore.c"}'],attached_items:[]}
loot replace block 0 -1 0 container.0 loot pld:items/money1

data modify storage pld:system Temp_player_new_mails[0].attached_items append from block 0 -1 0 Items[0]

function pld:system/chest_menu/screen/3_mails/get_mails/personal

