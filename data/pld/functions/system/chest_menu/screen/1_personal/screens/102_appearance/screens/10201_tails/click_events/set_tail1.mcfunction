execute if score @s tail_id1_unlocked matches 1 run scoreboard players set @s tail_id 1
execute if score @s tail_id1_unlocked matches 1 run tellraw @s {"translate":"pl.chest_menu.tail.enabled"}
execute unless score @s tail_id1_unlocked matches 1 run tellraw @s {"translate":"pl.chest_menu.tail_locked"}
function pld:system/chest_menu/screen/1_personal/screens/102_appearance/screens/10201_tails/main