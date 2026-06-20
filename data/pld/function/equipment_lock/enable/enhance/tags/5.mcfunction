#id5 神巧 近战攻击速度提升50%
data modify block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers".modifiers append value {type:"minecraft:attack_speed", id:"pld:mod_6_5_5_5", amount:0.5, operation:"add_multiplied_base", slot:"mainhand"}
scoreboard players add @s equipment_atk_sp_multiply_base 50