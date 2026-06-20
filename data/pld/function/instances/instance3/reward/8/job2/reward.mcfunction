tellraw @s {"translate": "pl.info.instance3.reward8b"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 1.. run function pld:instances/instance3/reward/8/job2/items
execute if score @s inv_remain matches 0 run function pld:instances/instance3/reward/8/job2/mail
