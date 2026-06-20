execute unless score @s player_mail_id matches 1.. run scoreboard players set @s player_mail_id 0

#从服务器抓取邮件
data modify storage pld:system Temp_system_mails set from storage pld:system system_mails
execute store result score temp_count int run data get storage pld:system Temp_system_mails
#最大id临时变量
scoreboard players operation temp_max_id int = @s player_mail_id

scoreboard players set new_mail_success int -1
#递归抽取首个邮件判断是否已经给过
execute if score temp_count int matches 1.. run function pld:system/chest_menu/screen/3_mails/get_mails/loop


#更新玩家领取情况
scoreboard players operation @s player_mail_id = temp_max_id int


#获取已有的邮件数据
data modify storage pld:system Temp_new_mails set value []
data modify storage pld:system Temp_new_mails set from entity @s EnderItems[0].tag.data.mails


#向storage里加入新的邮件
data modify storage pld:system Temp_new_mails prepend from storage pld:system Temp_player_new_mails[]

#更新储存内容
item modify entity @s enderchest.0 pld:chest_menu/mail/get_mails
item modify entity @s enderchest.9 pld:chest_menu/mail/get_mails

#清空缓存
data modify storage pld:system Temp_player_new_mails set value []
data modify storage pld:system Temp_system_mails set value []

#新邮件提醒
execute if score new_mail_success int matches 1 run tellraw @s {"translate":"pl.chest_menu.new_mails"}

