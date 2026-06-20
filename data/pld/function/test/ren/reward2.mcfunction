tellraw @s {"translate":"pl.info.test_ren.reward2"}

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 2.. run function pld:test/ren/reward2/items
execute if score @s inv_remain matches ..1 run function pld:test/ren/reward2/mail
