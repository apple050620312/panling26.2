execute unless score @s honor matches 100.. run tellraw @s {"translate":"pl.info.not_enough_honor"}

execute if score @s honor matches 100.. run function pld:system/test_inv/invmain
execute if score @s honor matches 100.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 100.. if score @s inv_remain matches 1.. run tag @s add buy_success

loot give @s[tag=buy_success] loot pld:items/64/firework_yao
scoreboard players remove @s[tag=buy_success] honor 100

tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

tag @s remove buy_success