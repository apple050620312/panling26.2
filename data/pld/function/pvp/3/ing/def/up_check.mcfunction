#已升级检查
execute if entity @s[scores={up_bless=1}] unless entity @s[nbt={Inventory:[{Slot:9b,components:{custom_data:{id:"panling:pvp3_def_blessing_uped"}}}]}] run function pld:pvp/3/ing/def/up/bless/uped
execute if entity @s[scores={up_axe=1}] unless entity @s[nbt={Inventory:[{Slot:18b,components:{custom_data:{id:"panling:pvp_weapon_melee_uped"}}}]}] run function pld:pvp/3/ing/def/up/axe/uped
execute if entity @s[scores={up_bow=1}] unless entity @s[nbt={Inventory:[{Slot:27b,components:{custom_data:{id:"panling:pvp_weapon_ranged_uped"}}}]}] run function pld:pvp/3/ing/def/up/bow/uped
execute if entity @s[scores={up_head=1}] unless entity @s[nbt={Inventory:[{Slot:31b,components:{custom_data:{id:"panling:pvp_helmet_uped"}}}]}] run function pld:pvp/3/ing/def/up/helmet/uped
execute if entity @s[scores={up_chest=1}] unless entity @s[nbt={Inventory:[{Slot:32b,components:{custom_data:{id:"panling:pvp_chestplate_uped"}}}]}] run function pld:pvp/3/ing/def/up/chestplate/uped
execute if entity @s[scores={up_legs=1}] unless entity @s[nbt={Inventory:[{Slot:33b,components:{custom_data:{id:"panling:pvp_leggings_uped"}}}]}] run function pld:pvp/3/ing/def/up/leggings/uped
execute if entity @s[scores={up_feet=1}] unless entity @s[nbt={Inventory:[{Slot:34b,components:{custom_data:{id:"panling:pvp_boots_uped"}}}]}] run function pld:pvp/3/ing/def/up/boots/uped


#未升级检查
execute unless entity @s[scores={up_bless=1}] unless entity @s[nbt={Inventory:[{Slot:9b,components:{custom_data:{id:"panling:pvp3_def_blessing_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/bless/check_point
execute unless entity @s[scores={up_axe=1}] unless entity @s[nbt={Inventory:[{Slot:18b,components:{custom_data:{id:"panling:pvp_weapon_melee_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/axe/check_point
execute unless entity @s[scores={up_bow=1}] unless entity @s[nbt={Inventory:[{Slot:27b,components:{custom_data:{id:"panling:pvp_weapon_ranged_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/bow/check_point
execute unless entity @s[scores={up_head=1}] unless entity @s[nbt={Inventory:[{Slot:31b,components:{custom_data:{id:"panling:pvp_helmet_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/helmet/check_point
execute unless entity @s[scores={up_chest=1}] unless entity @s[nbt={Inventory:[{Slot:32b,components:{custom_data:{id:"panling:pvp_chestplate_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/chestplate/check_point
execute unless entity @s[scores={up_legs=1}] unless entity @s[nbt={Inventory:[{Slot:33b,components:{custom_data:{id:"panling:pvp_leggings_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/leggings/check_point
execute unless entity @s[scores={up_feet=1}] unless entity @s[nbt={Inventory:[{Slot:34b,components:{custom_data:{id:"panling:pvp_boots_up"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/boots/check_point

execute unless entity @s[scores={up_bless=1}] unless entity @s[nbt={Inventory:[{Slot:9b,components:{custom_data:{id:"panling:pvp3_def_blessing_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/bless/not_enough_point
execute unless entity @s[scores={up_axe=1}] unless entity @s[nbt={Inventory:[{Slot:18b,components:{custom_data:{id:"panling:pvp_weapon_melee_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/axe/not_enough_point
execute unless entity @s[scores={up_bow=1}] unless entity @s[nbt={Inventory:[{Slot:27b,components:{custom_data:{id:"panling:pvp_weapon_ranged_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/bow/not_enough_point
execute unless entity @s[scores={up_head=1}] unless entity @s[nbt={Inventory:[{Slot:31b,components:{custom_data:{id:"panling:pvp_helmet_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/helmet/not_enough_point
execute unless entity @s[scores={up_chest=1}] unless entity @s[nbt={Inventory:[{Slot:32b,components:{custom_data:{id:"panling:pvp_chestplate_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/chestplate/not_enough_point
execute unless entity @s[scores={up_legs=1}] unless entity @s[nbt={Inventory:[{Slot:33b,components:{custom_data:{id:"panling:pvp_leggings_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/leggings/not_enough_point
execute unless entity @s[scores={up_feet=1}] unless entity @s[nbt={Inventory:[{Slot:34b,components:{custom_data:{id:"panling:pvp_boots_up"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/boots/not_enough_point


execute if entity @s[scores={pvp3_defpotion=1}] unless entity @s[nbt={Inventory:[{Slot:19b,components:{custom_data:{id:"panling:pvp3_bought_def_potion"}}}]}] run function pld:pvp/3/ing/def/up/potion/uped
execute unless entity @s[scores={pvp3_defpotion=1}] unless entity @s[nbt={Inventory:[{Slot:19b,components:{custom_data:{id:"panling:pvp3_buy_def3_potion"}}}]}] if entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/potion/check_point
execute unless entity @s[scores={pvp3_defpotion=1}] unless entity @s[nbt={Inventory:[{Slot:19b,components:{custom_data:{id:"panling:pvp3_buy_def3_potion"}}}]}] unless entity @s[scores={inbuy_area=1}] run function pld:pvp/3/ing/def/up/potion/not_enough_point
