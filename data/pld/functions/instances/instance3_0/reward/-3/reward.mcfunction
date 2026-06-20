tellraw @s {"translate": "pl.info.instance3.reward9a"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 8.. run function pld:instances/instance3_0/reward/-3/items
execute if score @s inv_remain matches ..7 run function pld:instances/instance3_0/reward/-3/mail

execute if score @s job matches 2 run function pld:instances/instance3_0/reward/-3/job2/reward

