tellraw @s {"translate": "pl.info.instance1.reward"}
scoreboard players set @s feather_mainland 1

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 4.. run function pld:instances/instance1/reward/items
execute if score @s inv_remain matches ..3 run function pld:instances/instance1/reward/mail

advancement grant @s only pld:instance1/root
advancement grant @s only pld:instance1/finish
tp @s 611 11 -137 -90 0


