#清空末影箱
function pld:system/chest_menu/clear_chest/main

#设置菜单页面记分板
scoreboard players set @s screen 10201

#功能按键-外观

#
item replace entity @s enderchest.1 with minecraft:leather_boots{clickable:1,set_tail:0,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.tail0"}',Lore:['{"translate":"pl.chest_menu.tail0.lore"}']}}
execute unless score @s tail_id matches 1.. run item modify entity @s enderchest.1 pld:chest_menu/10201_selected
execute if score @s tail_id matches 1.. run item modify entity @s enderchest.1 pld:chest_menu/10201_unselected


execute unless score @s tail_id1_unlocked matches 1 run item replace entity @s enderchest.2 with minecraft:brick{clickable:1,set_tail:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.tail1"}',Lore:['{"translate":"pl.chest_menu.tail1.lore"}','{"translate":"pl.chest_menu.tail_locked"}']}}
execute if score @s tail_id1_unlocked matches 1 run item replace entity @s enderchest.2 with minecraft:experience_bottle{clickable:1,set_tail:1,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.tail1"}',Lore:['{"translate":"pl.chest_menu.tail1.lore"}']}}
execute if score @s tail_id1_unlocked matches 1 if score @s tail_id matches 1 run item modify entity @s enderchest.2 pld:chest_menu/10201_selected
execute if score @s tail_id1_unlocked matches 1 unless score @s tail_id matches 1 run item modify entity @s enderchest.2 pld:chest_menu/10201_unselected



#设置返回按键
item replace entity @s enderchest.26 with minecraft:clock{clickable:1,to_screen:102,HideFlags:63,display:{Name:'{"translate":"pl.chest_menu.to_pre_screen"}',Lore:['{"translate":"pl.chest_menu.pre_menu.lore"}']}}


