#pld:system Temp_system_mails
#pld:system Temp_player_new_mails
#递归抽取首个邮件判断是否已经给过

#跳出条件1 邮件已空
execute store result score temp_count int run data get storage pld:system Temp_system_mails
execute if score temp_count int matches 0 run return 1

execute store result score temp int run data get storage pld:system Temp_system_mails[0].mail_id
#跳出条件2 邮件已检索完毕
execute if score @s player_mail_id >= temp int run return 2

#加入邮件
execute if score @s player_mail_id < temp int store success score new_mail_success int run data modify storage pld:system Temp_player_new_mails append from storage pld:system Temp_system_mails[0]
execute if score @s player_mail_id < temp int run data remove storage pld:system Temp_system_mails[0]
#设置最大邮件id
execute if score @s player_mail_id < temp int if score temp int > temp_max_id int run scoreboard players operation temp_max_id int = temp int
execute if score @s player_mail_id < temp int run function pld:system/chest_menu/screen/3_mails/get_mails/loop