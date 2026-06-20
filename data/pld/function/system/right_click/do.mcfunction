#list

execute if score @s right_click_run matches 1 run function pld:instances/ture_pangu/back_stone/using_back_stone
execute if score @s right_click_run matches 2 run function pld:system/test_bless/main
execute if score @s right_click_run matches 3..4 if score @s job matches 1 run function pld:system/arrowpack/arrowpacktick
execute if score @s right_click_run matches 5 if score @s job matches 2 run function pld:system/zf/zfmain
execute if score @s right_click_run matches 6 if score @s sneak_check matches 1.. if score @s job matches 0 run function pld:system/warrior_attack/weapon_skills/check_cool

execute if score @s right_click_run matches 3..4 unless score @s job matches 1 run scoreboard players set @s right_click_check 0
execute if score @s right_click_run matches 5 unless score @s job matches 2 run scoreboard players set @s right_click_check 0
execute if score @s right_click_run matches 6 unless score @s job matches 0 run scoreboard players set @s right_click_check 0
execute if score @s right_click_run matches 6 unless score @s sneak_check matches 1.. run scoreboard players set @s right_click_check 0
