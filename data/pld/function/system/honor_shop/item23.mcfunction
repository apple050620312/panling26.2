execute unless score @s honor matches 2000.. run tellraw @s {"translate":"pl.info.not_enough_honor"}

execute if score @s honor matches 2000.. run function pld:system/test_inv/invmain
execute if score @s honor matches 2000.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 2000.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:black_dye[custom_name='{"text":"§b城东坤府的钥匙"}',lore=['{"translate":"pl.item.lore.housekeya"}','{"translate":"pl.item.lore.housekeyb"}'],custom_data={id:"panling:housekey_earth"}] 5
scoreboard players remove @s[tag=buy_success] honor 2000
execute as @s[tag=buy_success] run setblock 1340 38 492 minecraft:oak_sign[custom_data={front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.honor_exchange23_sold.text2"}']}}] replace
tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

forceload add 261 69
execute at @s if entity @s[tag=buy_success] run data merge block 261 47 69 {front_text:{messages:['{"translate":"pl.sign.middle61.text1"}','[{"translate":"pl.sign.middle60a.text2"},{"selector":"@p[tag=buy_success]","color":"blue"},{"translate":"pl.sign.middle60b.text2"}]','{"translate":"pl.sign.middle61.text3"}','{"translate":"pl.sign.middle61.text4"}']}}
forceload remove 261 69

tag @s remove buy_success

