scoreboard players add @s achievement_point 15
tellraw @s {"translate":"pl.adv.instance2.finish.info"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 1.. run loot give @s loot pld:items/core_iron_armor_chestplate
execute if score @s inv_remain matches ..0 run function pld:adv/gameplay/instance2/finish_mail

