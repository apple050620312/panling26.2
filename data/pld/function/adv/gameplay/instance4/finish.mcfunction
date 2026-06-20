scoreboard players add @s achievement_point 15
tellraw @s {"translate":"pl.adv.instance4.finish.info"}
function pld:system/test_inv/invmain
execute if score @s inv_remain matches 1.. run loot give @s loot pld:items/core_iron_armor_boots
execute if score @s inv_remain matches ..0 run function pld:adv/gameplay/instance4/finish_mail
