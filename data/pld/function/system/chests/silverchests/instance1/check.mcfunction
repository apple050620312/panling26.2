execute unless score @s silver_chest matches 1.. run tellraw @s {"translate": "pl.info.silverchest_opened"}
execute if score @s silver_chest matches 1.. run function pld:system/test_inv/invmain
execute if score @s silver_chest matches 1.. if score @s inv_remain matches 0 run tellraw @s {"translate": "pl.info.chest_inv_0"}
execute if score @s silver_chest matches 1.. if score @s inv_remain matches 1.. unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:silverkey"}}}}] run tellraw @s {"translate":"pl.info.silverkey_lack"}
execute if score @s silver_chest matches 1.. if score @s inv_remain matches 1.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"panling:silverkey"}}}}] run function pld:system/chests/silverchests/instance1/loot
