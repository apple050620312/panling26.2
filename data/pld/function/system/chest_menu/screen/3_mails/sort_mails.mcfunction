#对玩家的信件进行分类排序
data modify storage pld:system temp_mail_taken0 set value []
data modify storage pld:system temp_mail_taken1 set value []
data modify storage pld:system temp_mail_taken0 set from entity @s EnderItems[0].tag.data.mails
data remove storage pld:system temp_mail_taken0[{is_taked:1b}]
data modify storage pld:system temp_mail_taken1 set from entity @s EnderItems[0].tag.data.mails
data remove storage pld:system temp_mail_taken1[{is_taked:0b}]


#删除溢出的无附件已读邮件
execute store result score mail_count0 int run data get storage pld:system temp_mail_taken0
execute store result score mail_count1 int run data get storage pld:system temp_mail_taken1
scoreboard players operation mail_temp int = mail_count0 int
scoreboard players operation mail_temp int += mail_count1 int
#情况1 未读邮件超出63封 只保留未读邮件
#不做任何额外操作 pld:system temp_mail_taken0即为输出
#情况2 未读邮件不足63 加上已读邮件仍在63以内 保留所有邮件
execute unless score mail_count0 int matches 63.. if score mail_temp int matches ..63 run data modify storage pld:system temp_mail_taken0 append from storage pld:system temp_mail_taken1[]
#情况3 未读邮件不足63 加上已读邮件超出63 则只保留最后领取的已读邮件(列表前n个)
execute unless score mail_count0 int matches 63.. if score mail_temp int matches 64.. run function pld:system/chest_menu/screen/3_mails/delete_mails/main


#返回给信件储存 pld:system temp_mail_taken0
item modify entity @s enderchest.0 pld:chest_menu/mail/sort_update_mails
item modify entity @s enderchest.9 pld:chest_menu/mail/sort_update_mails


data modify storage pld:system Temp_ender_data.mails set from storage pld:system temp_mail_taken0



