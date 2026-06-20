execute unless score @s honor matches 1000.. run tellraw @s {"translate":"pl.info.not_enough_honor"}
execute if score @s honor matches 1000.. run function pld:system/test_inv/invmain
execute if score @s honor matches 1000.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 1000.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:leather_helmet[unbreakable={},custom_name='[{"translate":"pl.item.name.flower_helmet"}]',lore=['{"translate":"pl.item.lore.honor_heads"}','{"translate":"pl.item.lore.flower_helmeta"}','{"translate":"pl.item.lore.flower_helmetb"}','{"translate":""}','{"translate":"pl.item.lore.flower_helmetc"}','{"translate":"pl.item.lore.flower_helmetd"}'],custom_data={id:"panling:flower_helmet"}]
scoreboard players remove @s[tag=buy_success] honor 1000

tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

tag @s remove buy_success