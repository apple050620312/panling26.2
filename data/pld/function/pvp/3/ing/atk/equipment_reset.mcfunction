#重置玩家物品
scoreboard players set @s up_axe 0
scoreboard players set @s up_bow 0
scoreboard players set @s up_bless 0
scoreboard players set @s up_head 0
scoreboard players set @s up_chest 0
scoreboard players set @s up_legs 0
scoreboard players set @s up_feet 0

clear @s


#给玩家放置物品
item replace entity @s armor.head with golden_helmet{id:"panling:pvp3_atk_helmet",pvp:1,display:{Name:'{"translate":"pl.pvp3.item.name.atk_helmet"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"3","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.can_up"}']},AttributeModifiers:[{Slot:"head",UUID:[I;1,1,1,1],Operation:0,AttributeName:"minecraft:generic.armor",Amount:3}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s}]}
item replace entity @s armor.chest with golden_chestplate{id:"panling:pvp3_atk_chestplate",pvp:1,display:{Name:'{"translate":"pl.pvp3.item.name.atk_chestplate"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"3","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":""}','{"translate":"pl.pvp.item.can_up"}']},AttributeModifiers:[{Slot:"chest",UUID:[I;2,2,2,2],Operation:0,AttributeName:"minecraft:generic.armor",Amount:3}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s},{id:"projectile_protection",lvl:1s}]}
item replace entity @s armor.legs with golden_leggings{id:"panling:pvp3_atk_leggings",pvp:1,display:{Name:'{"translate":"pl.pvp3.item.name.atk_leggings"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"3","color":"white","italic":false}]','{"translate":"pl.pvp.item.lore.arrow_protection"}','{"translate":""}','{"translate":"pl.pvp.item.can_up"}']},AttributeModifiers:[{Slot:"legs",UUID:[I;3,3,3,3],Operation:0,AttributeName:"minecraft:generic.armor",Amount:3}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s},{id:"projectile_protection",lvl:1s}]}
item replace entity @s armor.feet with golden_boots{id:"panling:pvp3_atk_boots",pvp:1,display:{Name:'{"translate":"pl.pvp3.item.name.atk_boots"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"3","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.can_up"}']},AttributeModifiers:[{Slot:"feet",UUID:[I;4,4,4,4],Operation:0,AttributeName:"minecraft:generic.armor",Amount:3}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s}]}

item replace entity @s hotbar.0 with iron_axe{id:"panling:pvp3_atk_axe",pvp:1,display:{Name:'{"translate":"pl.pvp3.item.name.atk_axe"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp3.item.lore.atk_axe1"}','{"translate":"pl.pvp3.item.lore.atk_axe2"}','{"translate":""}','[{"translate":"pl.attribute.weapon_attack0"},{"text":"6","color":"white","italic":false}]','[{"translate":"pl.attribute.weapon_atk_speed"},{"text":"1.6","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.can_up"}',]},AttributeModifiers:[{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_damage",Amount:6},{Slot:"mainhand",UUID:[I;5,5,5,5],Operation:0,AttributeName:"minecraft:generic.attack_speed",Amount:-2.4}],HideFlags:63,Unbreakable:1b}
item replace entity @s hotbar.1 with bow{id:"panling:pvp3_atk_bow",pvp:1,display:{Name:'{"translate":"pl.pvp3.item.name.atk_bow"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp3.item.lore.atk_bow1"}','{"translate":"pl.pvp3.item.lore.atk_bow2"}','{"translate":""}','[{"translate":"pl.attribute.bow_power"},{"text":"2","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.can_up"}']},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"power",lvl:1s}]}
item replace entity @s hotbar.2 with arrow 16
item replace entity @s hotbar.3 with cooked_beef{id:"panling:pvp_cooked_beef",display:{Name:'{"translate":"pl.pvp.item.name.cooked_beef"}',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":"pl.pvp.item.lore.cooked_beef"}']}} 16

#放置按钮
item replace entity @s inventory.0 with purple_dye{id:"panling:pvp3_atk_blessing_up",button:1,display:{Name:'{"translate":"pl.pvp.button.name.blessing_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.blessing_upa"}','{"translate":"pl.pvp.button.lore.blessing_upb"}','{"translate":"pl.pvp.button.lore.yao3a"}','{"translate":"pl.pvp.button.lore.yao3b"}',]}}
item replace entity @s inventory.9 with wooden_axe{CustomModelData:4,HideFlags:63,button:1,id:"panling:pvp_weapon_melee_up",display:{Name:'{"translate":"pl.pvp.button.name.weapon_melee_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.weapon_melee_upa"}','{"translate":"pl.pvp.button.lore.weapon_melee_upb"}',]}}
item replace entity @s inventory.18 with wooden_axe{CustomModelData:3,HideFlags:63,button:1,id:"panling:pvp_weapon_ranged_up",display:{Name:'{"translate":"pl.pvp.button.name.weapon_ranged_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upa"}','{"translate":"pl.pvp.button.lore.weapon_ranged_upb"}',]}}

item replace entity @s inventory.22 with leather_helmet{button:1,id:"panling:pvp_helmet_up",display:{Name:'{"translate":"pl.pvp.button.name.helmet_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.helmet_upa"}','{"translate":"pl.pvp.button.lore.helmet_upb"}',]},HideFlags:63}
item replace entity @s inventory.23 with leather_chestplate{button:1,id:"panling:pvp_chestplate_up",display:{Name:'{"translate":"pl.pvp.button.name.chestplate_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.chestplate_upa"}','{"translate":"pl.pvp.button.lore.chestplate_upb"}',]},HideFlags:63}
item replace entity @s inventory.24 with leather_leggings{HideFlags:63,button:1,id:"panling:pvp_leggings_up",display:{Name:'{"translate":"pl.pvp.button.name.leggings_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.leggings_upa"}','{"translate":"pl.pvp.button.lore.leggings_upb"}',]}}
item replace entity @s inventory.25 with leather_boots{button:1,id:"panling:pvp_boots_up",display:{Name:'{"translate":"pl.pvp.button.name.boots_up"}',Lore:['{"translate":"pl.pvp.button.lore.click"}','{"translate":"pl.pvp.button.lore.boots_upa"}','{"translate":"pl.pvp.button.lore.boots_upb"}',]},HideFlags:63}


