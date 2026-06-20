function pld:system/test_inv/invmain
execute if score @s inv_remain matches 1.. run function pld:system/te32/reward/item
execute if score @s inv_remain matches 0 run function pld:system/te32/reward/mail
