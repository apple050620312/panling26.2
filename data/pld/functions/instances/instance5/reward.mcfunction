tellraw @s {"translate": "pl.info.instance5.reward"}
spawnpoint @s 205 54 -1771
scoreboard players set @s feather_mainland 1

function pld:system/test_inv/invmain
execute if score @s inv_remain matches 7.. run function pld:instances/instance5/reward/items
execute if score @s inv_remain matches ..6 run function pld:instances/instance5/reward/mail

advancement grant @s only pld:instance5/root
advancement grant @s only pld:instance5/finish
tp @s -189 99 -835
