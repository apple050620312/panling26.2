attribute @s minecraft:generic.max_health modifier add 1-5-5-5-5 "武器屬性-最终生命" 0.3 multiply
attribute @s minecraft:generic.movement_speed modifier add 1-5-5-5-5 "武器屬性-速度" 0.1 multiply_base
attribute @s minecraft:generic.knockback_resistance modifier add 1-5-5-5-5 "武器屬性-抗击退率" 1 add
execute if score @s weapon6_awake matches 1 run attribute @s minecraft:generic.attack_damage modifier add 1-5-5-5-5 "神器屬性-最终近战傷害" 0.1 multiply
execute if score @s weapon6_awake matches 2 run attribute @s minecraft:generic.attack_damage modifier add 1-5-5-5-5 "神器屬性-最终近战傷害" 0.15 multiply
execute if score @s weapon6_awake matches 3 run attribute @s minecraft:generic.attack_damage modifier add 1-5-5-5-5 "神器屬性-最终近战傷害" 0.2 multiply

