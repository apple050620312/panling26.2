# pld:system system_mail_to_add
#获取这个邮件的id
execute if data storage pld:system system_mail_to_add.title store result storage pld:system system_mail_to_add.mail_id byte 1.0 run scoreboard players add system_mails_id int 1
# sent:"系统"
execute if data storage pld:system system_mail_to_add.title unless data storage pld:system system_mail_to_add.sent run data modify storage pld:system system_mail_to_add.sent set value "天道"
# is_taked:0b
execute if data storage pld:system system_mail_to_add.title run data modify storage pld:system system_mail_to_add.is_taked set value 0b



#将本项目并入列表 pld:system system_mails 中
execute if data storage pld:system system_mail_to_add.title run data modify storage pld:system system_mails prepend from storage pld:system system_mail_to_add

#清空此区间
data modify storage pld:system system_mail_to_add set value {}

