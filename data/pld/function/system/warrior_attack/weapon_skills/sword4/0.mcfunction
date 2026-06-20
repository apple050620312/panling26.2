#夜晚-近战攻速加成
execute unless predicate pld:time_day run effect give @s haste 5 0 false

#攻击力+10%
tag @s add sword4_0
attribute @s minecraft:generic.attack_damage modifier add panling:uuid_11_5_5_5_5 0.1 add_multiplied_base

