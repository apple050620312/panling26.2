tellraw @s {"translate": "pl.info.instance3.reward9a"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 7.. run function pld:instances/instance3/reward/9/items
execute if score @s inv_remain matches ..6 run function pld:instances/instance3/reward/9/mail

execute if score @s job matches 2 run function pld:instances/instance3/reward/9/job2/reward