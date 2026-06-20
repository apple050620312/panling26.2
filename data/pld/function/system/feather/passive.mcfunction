#移除被动屬性
execute unless entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:1}}}]}] run scoreboard players set @s archer_damage1_feather 0
execute unless entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:2}}}]}] run scoreboard players set @s feather_zf_str 0
execute unless entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:3}}}]}] run scoreboard players set @s attack_damage1_feather 0
execute unless entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:4}}}]}] run attribute @s max_health modifier remove panling:mod_8_8_8_8_8
execute unless entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:5}}}]}] run attribute @s armor modifier remove panling:mod_8_8_8_8_8

#给予玩家被动屬性
execute if entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:3}}}]}] run scoreboard players set @s attack_damage1_feather 15
execute if entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:1}}}]}] run scoreboard players set @s archer_damage1_feather 10
execute if entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:2}}}]}] run scoreboard players set @s feather_zf_str 1
execute if entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:4}}}]}] run attribute @s max_health modifier add panling:mod_8_8_8_8_8 2 add_value
execute if entity @s[nbt={Inventory:[{components:{custom_data:{id:"panling:feather",lvl:4,brunch:5}}}]}] run attribute @s armor modifier add panling:mod_8_8_8_8_8 2 add_value




