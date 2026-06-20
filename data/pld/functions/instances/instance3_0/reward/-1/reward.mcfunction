tellraw @s {"translate": "pl.info.instance3.reward7a"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 7.. run function pld:instances/instance3_0/reward/-1/items
execute if score @s inv_remain matches ..6 run function pld:instances/instance3_0/reward/-1/mail

execute if score @s job matches 2 run function pld:instances/instance3_0/reward/-1/job2/reward

