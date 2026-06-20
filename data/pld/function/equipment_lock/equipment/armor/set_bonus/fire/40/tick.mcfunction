#给予增幅
execute as @a[distance=..5,scores={job=0}] run attribute @s attack_damage modifier add panling:mod_12_3_4_0_0 0.25 add_multiplied_base
tag @a[distance=..5] add fire_0_ring

#提供生命恢复
execute as @a[distance=..5] unless predicate pld:effect_check/regeneration run effect give @s regeneration 5 0

