#id4 灵巧 近战攻击速度提升20%
data modify block ~ 255 ~ Items[0].tag.AttributeModifiers append value {Slot:"mainhand",UUID:[I;6,5,5,5],Operation:1,AttributeName:"minecraft:generic.attack_speed",Amount:0.2}
scoreboard players add @s equipment_atk_sp_multiply_base 20