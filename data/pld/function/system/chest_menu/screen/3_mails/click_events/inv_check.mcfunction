# 输入
# pld:system Temp_ender_data.mails
# pld:system Temp_the_mail
#获取附件数量
scoreboard players set player_mail_item_count int -1
execute store result score player_mail_item_count int run data get storage pld:system Temp_the_mail.attached_items

#计算背包空间
function pld:system/test_inv/invmain

# @s inv_remain
execute if score @s inv_remain < player_mail_item_count int run tellraw @s {"translate":"pl.chest_menu.info.inv_fill"}
execute if score @s inv_remain < player_mail_item_count int run return -1
#如果背包空间足够
execute if score @s inv_remain >= player_mail_item_count int run return 1

