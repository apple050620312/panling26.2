#抓取[51]
data modify storage pld:system Temp_the_mail set value {}
data modify storage pld:system Temp_the_mail set from storage pld:system Temp_ender_data.mails[51]

#生成按钮
function pld:system/chest_menu/screen/3_mails/buttons/all/slot12