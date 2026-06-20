tellraw @s {"translate": "pl.info.instance4.reward"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 3.. run function pld:instances/instance4/reward/items
execute if score @s inv_remain matches ..2 run function pld:instances/instance4/reward/mail

advancement grant @s only pld:instance4/root
advancement grant @s only pld:instance4/finish
tp @s -668.5 108 -637.5
