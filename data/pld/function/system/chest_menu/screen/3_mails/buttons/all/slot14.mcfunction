# 语境 被抓取的邮件 pld:system Temp_the_mail
#物品&标题
execute if data storage pld:system Temp_the_mail{is_taked:0b} run item replace entity @s enderchest.14 with experience_bottle[hide_additional_tooltip={},custom_data={clickable:1,take_id:14}]
execute if data storage pld:system Temp_the_mail{is_taked:1b} run item replace entity @s enderchest.14 with paper[hide_additional_tooltip={},custom_data={clickable:1,take_id:14}]

#邮件标题
execute if data storage pld:system Temp_the_mail{is_taked:0b} run item modify entity @s enderchest.14 pld:chest_menu/mail/title0
execute if data storage pld:system Temp_the_mail{is_taked:1b} run item modify entity @s enderchest.14 pld:chest_menu/mail/title1

#邮件内容
item modify entity @s enderchest.14 pld:chest_menu/mail/content

#邮件发送者
item modify entity @s enderchest.14 pld:chest_menu/mail/sent

#邮件附件：
item modify entity @s enderchest.14 pld:chest_menu/mail/attached_items
scoreboard players set player_mail_item_count int -1
execute store result score player_mail_item_count int run data get storage pld:system Temp_the_mail.attached_items

execute if score player_mail_item_count int matches 0 run item modify entity @s enderchest.14 pld:chest_menu/mail/no_item
execute store result score count int run data get storage pld:system Temp_the_mail.attached_items[0].Count
execute if score player_mail_item_count int matches 1.. unless data storage pld:system Temp_the_mail.attached_items[0].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item1
execute if score player_mail_item_count int matches 1.. if data storage pld:system Temp_the_mail.attached_items[0].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item1_book
execute store result score count int run data get storage pld:system Temp_the_mail.attached_items[1].Count
execute if score player_mail_item_count int matches 2.. unless data storage pld:system Temp_the_mail.attached_items[1].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item2
execute if score player_mail_item_count int matches 2.. if data storage pld:system Temp_the_mail.attached_items[1].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item2_book
execute store result score count int run data get storage pld:system Temp_the_mail.attached_items[2].Count
execute if score player_mail_item_count int matches 3.. unless data storage pld:system Temp_the_mail.attached_items[2].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item3
execute if score player_mail_item_count int matches 3.. if data storage pld:system Temp_the_mail.attached_items[2].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item3_book
execute store result score count int run data get storage pld:system Temp_the_mail.attached_items[3].Count
execute if score player_mail_item_count int matches 4.. unless data storage pld:system Temp_the_mail.attached_items[3].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item4
execute if score player_mail_item_count int matches 4.. if data storage pld:system Temp_the_mail.attached_items[3].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item4_book
execute store result score count int run data get storage pld:system Temp_the_mail.attached_items[4].Count
execute if score player_mail_item_count int matches 5 unless data storage pld:system Temp_the_mail.attached_items[4].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item5
execute if score player_mail_item_count int matches 5 if data storage pld:system Temp_the_mail.attached_items[4].tag.title run item modify entity @s enderchest.14 pld:chest_menu/mail/item5_book

#点击信息
execute if data storage pld:system Temp_the_mail{is_taked:0b} run item modify entity @s enderchest.14 pld:chest_menu/mail/click_to_take_items
execute if data storage pld:system Temp_the_mail{is_taked:1b} run item modify entity @s enderchest.14 pld:chest_menu/mail/items_taken