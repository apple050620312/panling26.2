#重置玩家物品
scoreboard players set @s up_axe 0
scoreboard players set @s up_bow 0
scoreboard players set @s up_bless 0
scoreboard players set @s up_head 0
scoreboard players set @s up_chest 0
scoreboard players set @s up_legs 0
scoreboard players set @s up_feet 0
scoreboard players set @s pvp2_atkpotion 0

clear @s


#给玩家放置物品
item replace entity @s armor.head with leather_helmet[custom_name='{"translate":"pl.pvp2.item.name.atk_helmet"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"2","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.can_up"}'],unbreakable={},minecraft:enchantments={binding_curse:1},custom_data={id:"panling:pvp2_atk_helmet",pvp:1,AttributeModifiers:[{Slot:"head",UUID:[I;1,1,1,1],Operation:0,AttributeName:"minecraft:armor",Amount:2}]}]
item replace entity @s armor.chest with leather_chestplate[custom_name='{"translate":"pl.pvp2.item.name.atk_chestplate"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"2","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":""}','{"translate":"pl.pvp.item.can_up"}'],unbreakable={},minecraft:enchantments={binding_curse:1,projectile_protection:1},custom_data={id:"panling:pvp2_atk_chestplate",pvp:1,AttributeModifiers:[{Slot:"chest",UUID:[I;2,2,2,2],Operation:0,AttributeName:"minecraft:armor",Amount:2}]}]
item replace entity @s armor.legs with leather_leggings[custom_name='{"translate":"pl.pvp2.item.name.atk_leggings"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"2","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":""}','{"translate":"pl.pvp.item.can_up"}'],unbreakable={},minecraft:enchantments={binding_curse:1,projectile_protection:1},custom_data={id:"panling:pvp2_atk_leggings",pvp:1,AttributeModifiers:[{Slot:"legs",UUID:[I;3,3,3,3],Operation:0,AttributeName:"minecraft:armor",Amount:2}]}]
item replace entity @s armor.feet with leather_boots[custom_name='{"translate":"pl.pvp2.item.name.atk_boots"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"2","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.can_up"}'],unbreakable={},minecraft:enchantments={binding_curse:1},custom_data={id:"panling:pvp2_atk_boots",pvp:1,AttributeModifiers:[{Slot:"feet",UUID:[I;4,4,4,4],Operation:0,AttributeName:"minecraft:armor",Amount:2}]}]

item replace entity @s hotbar.0 with golden_axe[custom_name='{"translate":"pl.pvp2.item.name.atk_axe"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.atk_axe"}','{"translate":""}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"8","color":"white","italic":false}]','[{"translate":"pl.attribute.weapon_atk_speed"},{"text":"1","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.can_up"}'],unbreakable={},custom_data={id:"panling:pvp2_atk_axe",pvp:1,AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_damage",Amount:8},{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:attack_speed",Amount:-3}]}]
item replace entity @s hotbar.1 with bow[custom_name='{"translate":"pl.pvp2.item.name.atk_bow"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.atk_bow"}','{"translate":""}','[{"translate":"pl.attribute.bow_power"},{"text":"1","color":"white","italic":false}]','{"translate":"pl.lore.flame"}','{"translate":""}','{"translate":"pl.pvp.item.can_up"}'],unbreakable={},minecraft:enchantments={flame:1,infinity:1},custom_data={id:"panling:pvp2_atk_bow",pvp:1}]
item replace entity @s hotbar.2 with arrow[custom_name='{"translate":"pl.pvp2.item.name.atk_arrow"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp2.item.lore.atk_arrow"}'],minecraft:enchantments={protection:1},custom_data={id:"panling:pvp2_atk_arrow",pvp:1}]
item replace entity @s hotbar.3 with cooked_beef[custom_name='{"translate":"pl.pvp.item.name.cooked_beef"}',lore=['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.cooked_beef"}'],custom_data={id:"panling:pvp_cooked_beef"}] 16

#放置按钮
item replace entity @s inventory.0 with cocoa_beans[custom_name='{"translate":"pl.pvp.button.name.blessing_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.blessing_upa"}','{"translate":"pl.pvp.button.lore.blessing_upb"}','{"translate":"pl.pvp.button.lore.ren2a"}','{"translate":"pl.pvp.button.lore.ren2b"}'],custom_data={id:"panling:pvp2_atk_blessing_up",button:1}]
item replace entity @s inventory.9 with wooden_axe[minecraft:custom_model_data={floats:[4]},custom_name='{"translate":"pl.pvp.button.name.weapon_melee_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.weapon_melee_upa"}','{"translate":"pl.pvp.button.lore.weapon_melee_upb"}'],custom_data={button:1,id:"panling:pvp_weapon_melee_up"}]
item replace entity @s inventory.10 with potion[custom_name='{"translate":"pl.pvp.button.name.buy_atk_potion"}',lore=['{"translate":"pl.pvp.button.lore.click_buy"}','{"translate":"pl.pvp.button.lore.buy_atk_potiona"}','{"translate":"pl.pvp.button.lore.buy_atk_potionb"}'],custom_data={CustomPotionColor:16426,id:"panling:pvp2_buy_atk_potion"}]
item replace entity @s inventory.18 with wooden_axe[minecraft:custom_model_data={floats:[3]},custom_name='{"translate":"pl.pvp.button.name.weapon_ranged_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upa"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upb"}'],custom_data={button:1,id:"panling:pvp_weapon_ranged_up"}]

item replace entity @s inventory.22 with leather_helmet[custom_name='{"translate":"pl.pvp.button.name.helmet_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.helmet_upa"}','{"translate":"pl.pvp.button.lore.helmet_upb"}'],custom_data={button:1,id:"panling:pvp_helmet_up"}]
item replace entity @s inventory.23 with leather_chestplate[custom_name='{"translate":"pl.pvp.button.name.chestplate_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.chestplate_upa"}','{"translate":"pl.pvp.button.lore.chestplate_upb"}'],custom_data={button:1,id:"panling:pvp_chestplate_up"}]
item replace entity @s inventory.24 with leather_leggings[custom_name='{"translate":"pl.pvp.button.name.leggings_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.leggings_upa"}','{"translate":"pl.pvp.button.lore.leggings_upb"}'],custom_data={button:1,id:"panling:pvp_leggings_up"}]
item replace entity @s inventory.25 with leather_boots[custom_name='{"translate":"pl.pvp.button.name.boots_up"}',lore=['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.boots_upa"}','{"translate":"pl.pvp.button.lore.boots_upb"}'],custom_data={button:1,id:"panling:pvp_boots_up"}]


