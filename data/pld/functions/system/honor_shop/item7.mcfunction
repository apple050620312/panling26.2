execute unless score @s honor matches 600.. run tellraw @s {"translate":"pl.info.not_enough_honor"}
execute if score @s honor matches 600.. run function pld:system/test_inv/invmain
execute if score @s honor matches 600.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 600.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:zombie_head{id:"panling:honor_head",type:7,enchanted:0,display:{Name:'[{"translate":"pl.item.name.honor_head7"}]',Lore:['{"translate":"pl.item.lore.honor_heads"}','{"translate":"pl.item.lore.honor_head7a"}','{"translate":"pl.item.lore.honor_head7b"}','{"translate":""}','{"translate":"pl.item.lore.honor_head_can_enchant"}']}}
scoreboard players remove @s[tag=buy_success] honor 600
tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

tag @s remove buy_success