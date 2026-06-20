#扣分
scoreboard players remove @s pvp_point 2
#标记
scoreboard players set @s up_feet 1
#更新物品
clear @s leather_boots{id:"panling:pvp2_atk_boots"}
item replace entity @s armor.feet with leather_boots{id:"panling:pvp2_atk_boots",pvp:1,display:{color:10040115,Name:'[{"translate":"pl.pvp2.item.name.atk_boots"},{"text":"+","color":"aqua","italic":false}]',Lore:['{"translate":"pl.pvp.item.limit"}','{"translate":""}','[{"translate":"pl.attribute.armor"},{"text":"2","color":"white","italic":false}]','[{"translate":"pl.attribute.knockback_resistance"},{"text":"50%","color":"white","italic":false}]','{"translate":""}','{"translate":"pl.pvp.item.uped"}']},AttributeModifiers:[{Slot:"feet",UUID:[I;4,4,4,4],Operation:0,AttributeName:"minecraft:generic.armor",Amount:2},{Slot:"feet",UUID:[I;4,4,4,4],Operation:0,AttributeName:"minecraft:generic.knockback_resistance",Amount:0.5}],Unbreakable:1b,HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1s}]}

#重置按钮
clear @s leather_boots{id:"panling:pvp_boots_up"}
item replace entity @s inventory.25 with leather_boots{button:1,Enchantments:[{id:"protection",lvl:1s}],id:"panling:pvp_boots_uped",display:{Name:'{"translate":"pl.pvp.button.name.boots_up"}',Lore:['{"translate":"pl.pvp.button.lore.uped"}','{"translate":"pl.pvp.button.lore.boots_uped"}',]},HideFlags:63}

#信息
tellraw @s {"translate":"pl.info.enough_point"}
