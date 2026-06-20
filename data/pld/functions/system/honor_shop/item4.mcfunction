execute unless score @s honor matches 450.. run tellraw @s {"translate":"pl.info.not_enough_honor"}
execute if score @s honor matches 450.. run function pld:system/test_inv/invmain
execute if score @s honor matches 450.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.not_enough_inv_honor"}
execute if score @s honor matches 450.. if score @s inv_remain matches 1.. run tag @s add buy_success
give @s[tag=buy_success] minecraft:player_head{SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value: "eyJ0aW1lc3RhbXAiOjE0MTQyMjU4NjU4NzAsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iNGI0OGU5ZGQ5NGI1ZDlmOTkzNjcyYjY0YzVkZjdkODgwMzQ1N2QyMTU2NGY1NTQxYjZjZDU5ODVmMTYxYjUifX19"}]}},id:"panling:honor_head",type:4,enchanted:0,display:{Name:'[{"translate":"pl.item.name.honor_head4"}]',Lore:['{"translate":"pl.item.lore.honor_heads"}','{"translate":"pl.item.lore.honor_head4a"}','{"translate":"pl.item.lore.honor_head4b"}','{"translate":""}','{"translate":"pl.item.lore.honor_head_can_enchant"}']}}
scoreboard players remove @s[tag=buy_success] honor 450
tellraw @s[tag=buy_success] [{"translate":"pl.info.enough_honor1"},{"score":{"name": "@p","objective": "honor"},"color":"gold"},{"translate":"pl.info.enough_honor2"}]

tag @s remove buy_success