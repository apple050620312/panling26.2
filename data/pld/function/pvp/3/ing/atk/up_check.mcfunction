#已升级检查
execute if entity @s[scores={up_bless=1}] unless entity @s[nbt={Inventory:[{Slot:9b,components:{"minecraft:custom_data":{id:"panling:pvp3_atk_blessing_uped"}}}]}] run function pld:pvp/3/ing/atk/up/bless/uped
execute if entity @s[scores={up_axe=1}] unless entity @s[nbt={Inventory:[{Slot:18b,components:{"minecraft:custom_data":{id:"panling:pvp_weapon_melee_uped"}}}]}] run function pld:pvp/3/ing/atk/up/axe/uped
execute if entity @s[scores={up_bow=1}] unless entity @s[nbt={Inventory:[{Slot:27b,components:{"minecraft:custom_data":{id:"panling:pvp_weapon_ranged_uped"}}}]}] run function pld:pvp/3/ing/atk/up/bow/uped
execute if entity @s[scores={up_head=1}] unless entity @s[nbt={Inventory:[{Slot:31b,components:{"minecraft:custom_data":{id:"panling:pvp_helmet_uped"}}}]}] run function pld:pvp/3/ing/atk/up/helmet/uped
execute if entity @s[scores={up_chest=1}] unless entity @s[nbt={Inventory:[{Slot:32b,components:{"minecraft:custom_data":{id:"panling:pvp_chestplate_uped"}}}]}] run function pld:pvp/3/ing/atk/up/chestplate/uped
execute if entity @s[scores={up_legs=1}] unless entity @s[nbt={Inventory:[{Slot:33b,components:{"minecraft:custom_data":{id:"panling:pvp_leggings_uped"}}}]}] run function pld:pvp/3/ing/atk/up/leggings/uped
execute if entity @s[scores={up_feet=1}] unless entity @s[nbt={Inventory:[{Slot:34b,components:{"minecraft:custom_data":{id:"panling:pvp_boots_uped"}}}]}] run function pld:pvp/3/ing/atk/up/boots/uped

#未升级检查
execute unless entity @s[scores={up_bless=1}] unless entity @s[nbt={Inventory:[{Slot:9b,components:{"minecraft:custom_data":{id:"panling:pvp3_atk_blessing_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/bless/check_point
execute unless entity @s[scores={up_axe=1}] unless entity @s[nbt={Inventory:[{Slot:18b,components:{"minecraft:custom_data":{id:"panling:pvp_weapon_melee_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/axe/check_point
execute unless entity @s[scores={up_bow=1}] unless entity @s[nbt={Inventory:[{Slot:27b,components:{"minecraft:custom_data":{id:"panling:pvp_weapon_ranged_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/bow/check_point
execute unless entity @s[scores={up_head=1}] unless entity @s[nbt={Inventory:[{Slot:31b,components:{"minecraft:custom_data":{id:"panling:pvp_helmet_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/helmet/check_point
execute unless entity @s[scores={up_chest=1}] unless entity @s[nbt={Inventory:[{Slot:32b,components:{"minecraft:custom_data":{id:"panling:pvp_chestplate_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/chestplate/check_point
execute unless entity @s[scores={up_legs=1}] unless entity @s[nbt={Inventory:[{Slot:33b,components:{"minecraft:custom_data":{id:"panling:pvp_leggings_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/leggings/check_point
execute unless entity @s[scores={up_feet=1}] unless entity @s[nbt={Inventory:[{Slot:34b,components:{"minecraft:custom_data":{id:"panling:pvp_boots_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/boots/check_point

execute unless entity @s[scores={up_bless=1}] unless entity @s[nbt={Inventory:[{Slot:9b,components:{"minecraft:custom_data":{id:"panling:pvp3_atk_blessing_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/bless/not_enough_point
execute unless entity @s[scores={up_axe=1}] unless entity @s[nbt={Inventory:[{Slot:18b,components:{"minecraft:custom_data":{id:"panling:pvp_weapon_melee_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/axe/not_enough_point
execute unless entity @s[scores={up_bow=1}] unless entity @s[nbt={Inventory:[{Slot:27b,components:{"minecraft:custom_data":{id:"panling:pvp_weapon_ranged_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/bow/not_enough_point
execute unless entity @s[scores={up_head=1}] unless entity @s[nbt={Inventory:[{Slot:31b,components:{"minecraft:custom_data":{id:"panling:pvp_helmet_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/helmet/not_enough_point
execute unless entity @s[scores={up_chest=1}] unless entity @s[nbt={Inventory:[{Slot:32b,components:{"minecraft:custom_data":{id:"panling:pvp_chestplate_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/chestplate/not_enough_point
execute unless entity @s[scores={up_legs=1}] unless entity @s[nbt={Inventory:[{Slot:33b,components:{"minecraft:custom_data":{id:"panling:pvp_leggings_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/leggings/not_enough_point
execute unless entity @s[scores={up_feet=1}] unless entity @s[nbt={Inventory:[{Slot:34b,components:{"minecraft:custom_data":{id:"panling:pvp_boots_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/atk/up/boots/not_enough_point

