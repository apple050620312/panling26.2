#检查玩家身上银票是否足够
execute store result score @s temp3 run clear @s iron_ingot{id:"panling:silver_ticket"} 0
#足够则解鎖并删除对应数量的银票
execute if score @s temp3 matches 16.. run function pld:system/chest_menu/screen/2_chests/unlock/219/main
#不足够则提示不行
execute unless score @s temp3 matches 16.. run tellraw @s {"translate":"pl.info.chest_menu.unlock_chest_refuse"}
#刷新菜单
function pld:system/chest_menu/screen/2_chests/main