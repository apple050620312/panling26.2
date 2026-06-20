# pld:system Temp_ender_data.mails
# pld:system Temp_the_mail
#领取物品
execute if score player_mail_item_count int matches -1..0 run tellraw @s {"translate":"pl.chest_menu.info.has_read"}
execute if score player_mail_item_count int matches 1.. run function pld:system/chest_menu/screen/3_mails/click_events/take_the_items


#将本条目设置为不可领取
data modify storage pld:system Temp_ender_data.mails[3].is_taked set value 1b
#更新储存数据
item modify entity @s enderchest.0 pld:chest_menu/mail/update_mails
item modify entity @s enderchest.9 pld:chest_menu/mail/update_mails

#返还本位置可能存在的物品
function pld:system/chest_menu/screen/3_mails/click_events/return/slot4

#重置本按钮
function pld:system/chest_menu/screen/3_mails/buttons/page1/slot4