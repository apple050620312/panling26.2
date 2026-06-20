#语境 
#   pld:system Temp 玩家数据
#   pld:system Temp_ender_data 玩家菜单数据
scoreboard players reset @s temp2
#本screen 需要检查的按钮表
data modify storage pld:system Temp_ender_data_mails set value 
data modify storage pld:system Temp_ender_data_mails set from storage pld:system Temp_ender_data.mails
execute store result score player_mail_count int run data get storage pld:system Temp_ender_data_mails
execute unless score @s temp2 matches 1 store success score @s temp2 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_screen:0}}}] run function pld:system/chest_menu/screen/0_main_menu/main

scoreboard players reset inv_success int
execute if score player_mail_count int matches 1.. if score @s screen_mail_page matches 1 run function pld:system/chest_menu/screen/3_mails/click_events/page1/check
execute if score player_mail_count int matches 22.. if score @s screen_mail_page matches 2 run function pld:system/chest_menu/screen/3_mails/click_events/page2/check
execute if score player_mail_count int matches 43.. if score @s screen_mail_page matches 3 run function pld:system/chest_menu/screen/3_mails/click_events/page3/check


#检查邮件界面翻页
execute if score @s screen_mail_page matches 1 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{reset_self_id:7}}}] run function pld:system/chest_menu/buttons/reset_self7
execute if score @s screen_mail_page matches 1 if score player_mail_count int matches ..21 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{reset_self_id:8}}}] run function pld:system/chest_menu/buttons/reset_self8
execute if score @s screen_mail_page matches 2 if score player_mail_count int matches ..42 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{reset_self_id:8}}}] run function pld:system/chest_menu/buttons/reset_self8
execute if score @s screen_mail_page matches 3 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{reset_self_id:8}}}] run function pld:system/chest_menu/buttons/reset_self8

execute if score @s screen_mail_page matches 1 if score player_mail_count int matches 22.. unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_page:2}}}] store success score @s temp2 run function pld:system/chest_menu/screen/3_mails/page2

execute unless score @s temp2 matches 1 store success score @s temp2 if score @s screen_mail_page matches 2 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_page:1}}}] run function pld:system/chest_menu/screen/3_mails/page1
execute unless score @s temp2 matches 1 if score @s screen_mail_page matches 2 if score player_mail_count int matches 43.. unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_page:3}}}] store success score @s temp2 run function pld:system/chest_menu/screen/3_mails/page3

execute unless score @s temp2 matches 1 if score @s screen_mail_page matches 3 unless data storage pld:system Temp.EnderItems[{components:{custom_data:{to_page:2}}}] store success score @s temp2 run function pld:system/chest_menu/screen/3_mails/page2

#execute unless data storage pld:system Temp.EnderItems[{components:{custom_data:{take_id:1}}}] run function pld:system/chest_menu/screen/3_mails/click_events/slot1/check



