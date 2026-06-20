#夜晚-近战攻速加成
execute unless predicate pld:time_day run effect give @s haste 5 0 false

#攻击力+10%
tag @s add sword4_0
attribute @s generic.attack_damage modifier add 11-5-5-5-5 "太极剑-阴-攻击力" 0.1 multiply_base

