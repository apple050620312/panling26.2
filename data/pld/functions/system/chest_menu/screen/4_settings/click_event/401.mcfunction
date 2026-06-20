#切换状态
execute store success score temp3 int unless score @s info_pos_armor_skill matches 0.. run scoreboard players set @s info_pos_armor_skill 1
execute unless score temp3 int matches 1 store success score temp3 int if score @s info_pos_armor_skill matches 0 run scoreboard players set @s info_pos_armor_skill 1
execute unless score temp3 int matches 1 store success score temp3 int if score @s info_pos_armor_skill matches 1 run scoreboard players set @s info_pos_armor_skill 0
scoreboard players reset temp3 int


tellraw @s {"translate":"pl.chest_menu.info.switch"}
#重置按钮
function pld:system/chest_menu/screen/4_settings/buttons/401