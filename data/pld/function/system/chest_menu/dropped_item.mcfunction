#重置附近十格内所有玩家的储存物品
execute if data entity @s Item{tag:{reset_self_id:1}} as @a[distance=..10] run function pld:system/chest_menu/screen/reset_left1
execute if data entity @s Item{tag:{reset_self_id:2}} as @a[distance=..10] run function pld:system/chest_menu/screen/reset_left2
kill @s

