execute unless score @s honor matches 500.. run tellraw @s {"translate":"pl.info.not_enough_honor"}
execute if score @s honor matches 500.. run function pld:system/test_inv/invmain
execute if score @s honor matches 500.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 500.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:player_head[custom_name='[{"translate":"pl.item.name.honor_head11"}]',lore=['{"translate":"pl.item.lore.honor_heads"}','{"translate":"pl.item.lore.honor_head11a"}','{"translate":"pl.item.lore.honor_head11b"}','{"translate":""}','{"translate":"pl.item.lore.honor_head_can_enchant"}'],custom_data={SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value: "eyJ0aW1lc3RhbXAiOjE0MTEyODUyNjk4MTMsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80MzFlMTM0NTdmYTczOTllZTg5NmJiZGQ5Y2YwMmE4OTUzYzExMjY3ZjU4Yzk4NmY0ZGJlYjVlZWU5NjYxNSJ9fX0="}]}},id:"panling:honor_head",type:11,enchanted:0}]
scoreboard players remove @s[tag=buy_success] honor 500

tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

tag @s remove buy_success