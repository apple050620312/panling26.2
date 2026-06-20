#情况3 未读邮件不足63 加上已读邮件超出63 则只保留最后领取的已读邮件(列表前n个)
scoreboard players set temp int 63
scoreboard players operation temp int -= mail_count0 int

#将 pld:system temp_mail_taken1 里的项保留前 temp int 个 放到 temp_mails中
function pld:system/chest_menu/screen/3_mails/delete_mails/select_mails

#合并
data modify storage pld:system temp_mail_taken0 append from storage pld:system temp_mails[]