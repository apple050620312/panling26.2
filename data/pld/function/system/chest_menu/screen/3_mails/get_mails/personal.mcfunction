#个人邮件
# pld:system Temp_player_new_mails里所有的邮件
#获取已有的邮件数据
data modify storage pld:system Temp_new_mails set value []
data modify storage pld:system Temp_new_mails set from entity @s EnderItems[0].tag.data.mails


#向storage里加入新的邮件
data modify storage pld:system Temp_new_mails prepend from storage pld:system Temp_player_new_mails

#更新储存内容
item modify entity @s enderchest.0 pld:chest_menu/mail/get_mails
item modify entity @s enderchest.9 pld:chest_menu/mail/get_mails

#清空缓存
data modify storage pld:system Temp_player_new_mails set value []

#新邮件提醒
tellraw @s {"translate":"pl.chest_menu.new_mails"}