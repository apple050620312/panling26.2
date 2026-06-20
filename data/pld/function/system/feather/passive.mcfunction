#移除被动屬性
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:1}}}]}] run scoreboard players set @s archer_damage1_feather 0
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:2}}}]}] run scoreboard players set @s feather_zf_str 0
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:3}}}]}] run scoreboard players set @s attack_damage1_feather 0
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:4}}}]}] run attribute @s generic.max_health modifier remove 8-8-8-8-8
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:5}}}]}] run attribute @s generic.armor modifier remove 8-8-8-8-8

#给予玩家被动屬性
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:3}}}]}] run scoreboard players set @s attack_damage1_feather 15
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:1}}}]}] run scoreboard players set @s archer_damage1_feather 10
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:2}}}]}] run scoreboard players set @s feather_zf_str 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:4}}}]}] run attribute @s generic.max_health modifier add 8-8-8-8-8 "羽毛被动-生命" 2 add
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:"panling:feather",lvl:4,brunch:5}}}]}] run attribute @s generic.armor modifier add 8-8-8-8-8 "羽毛被动-盔甲" 2 add




