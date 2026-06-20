#生命回复效果
execute if predicate pld:time_day unless predicate pld:effect_check/regeneration run effect give @s regeneration 5 0 false

#最大生命值+10%
attribute @s max_health modifier add panling:mod_11_5_5_5_5 0.1 add_multiplied_base