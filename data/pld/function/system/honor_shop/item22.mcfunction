execute unless score @s honor matches 2000.. run tellraw @s {"translate":"pl.info.not_enough_honor"}
execute if score @s honor matches 2000.. run function pld:system/test_inv/invmain
execute if score @s honor matches 2000.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 2000.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:black_dye{id:"panling:housekey_sky",display:{Name:'{"text":"§b城东乾府的钥匙"}',Lore:['{"translate":"pl.item.lore.housekeya"}','{"translate":"pl.item.lore.housekeyb"}']}} 5
scoreboard players remove @s[tag=buy_success] honor 2000
execute as @s[tag=buy_success] run setblock 1329 38 492 minecraft:oak_sign{front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.honor_exchange22_sold.text2"}']}} replace
tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

forceload add 288 68
execute at @s if entity @s[tag=buy_success] run data merge block 288 45 68 {front_text:{messages:['{"translate":"pl.sign.middle60.text1"}','[{"translate":"pl.sign.middle60a.text2"},{"selector":"@p[tag=buy_success]","color":"blue"},{"translate":"pl.sign.middle60b.text2"}]','{"translate":"pl.sign.middle60.text3"}','{"translate":"pl.sign.middle60.text4"}']}}
forceload remove 288 68


tag @s remove buy_success
