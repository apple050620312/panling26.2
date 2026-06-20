#已经领取消息
tellraw @s {"translate":"pl.chest_menu.info.items_taken"}
#返还本位置可能存在的物品
function pld:system/chest_menu/screen/3_mails/click_events/return/slot25

#重置本按钮
function pld:system/chest_menu/screen/3_mails/buttons/page3/slot25