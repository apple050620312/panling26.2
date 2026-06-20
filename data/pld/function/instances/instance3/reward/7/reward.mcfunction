tellraw @s {"translate": "pl.info.instance3.reward7a"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 7.. run function pld:instances/instance3/reward/7/items
execute if score @s inv_remain matches ..6 run function pld:instances/instance3/reward/7/mail

execute if score @s job matches 2 run function pld:instances/instance3/reward/7/job2/reward