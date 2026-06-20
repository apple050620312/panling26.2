tellraw @s {"translate": "pl.info.instance2.reward"}
scoreboard players set @s feather_mainland 1

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 3.. run function pld:instances/instance2/reward/items
execute if score @s inv_remain matches ..2 run function pld:instances/instance2/reward/mail

advancement grant @s only pld:instance2/root
advancement grant @s only pld:instance2/finish
tp @s -309 11 800 -90 0
