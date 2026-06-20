tellraw @s {"translate": "pl.info.instance3.reward3"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 2.. run function pld:instances/instance3/reward/3/items
execute if score @s inv_remain matches ..1 run function pld:instances/instance3/reward/3/mail

