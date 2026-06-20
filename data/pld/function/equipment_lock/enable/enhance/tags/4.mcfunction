#id4 灵巧 近战攻击速度提升20%
data modify block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers".modifiers append value {type:"minecraft:attack_speed", id:"pld:mod_6_5_5_5", amount:0.2, operation:"add_multiplied_base", slot:"mainhand"}
scoreboard players add @s equipment_atk_sp_multiply_base 20