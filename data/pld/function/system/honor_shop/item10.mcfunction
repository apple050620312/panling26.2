execute unless score @s honor matches 500.. run tellraw @s {"translate":"pl.info.not_enough_honor"}
execute if score @s honor matches 500.. run function pld:system/test_inv/invmain
execute if score @s honor matches 500.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 500.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:player_head{SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value: "eyJ0aW1lc3RhbXAiOjE0MTEyOTc4MDQ1MzAsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS84MTlkNzk4OWY0YzVkMTZkNzJiOTQyZmNiMjQzN2NhOGY0ODRlNzFjYTBhNDY3ZGMxMzg5NDlkOGRlMzMifX19"}]}},id:"panling:honor_head",type:10,enchanted:0,display:{Name:'[{"translate":"pl.item.name.honor_head10"}]',Lore:['{"translate":"pl.item.lore.honor_heads"}','{"translate":"pl.item.lore.honor_head10a"}','{"translate":"pl.item.lore.honor_head10b"}','{"translate":""}','{"translate":"pl.item.lore.honor_head_can_enchant"}']}}

scoreboard players remove @s[tag=buy_success] honor 500

tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

tag @s remove buy_success