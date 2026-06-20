#给予增幅
execute as @a[distance=..5,scores={job=0}] run attribute @s generic.attack_damage modifier add 12-3-4-0-0 "火四件套光环效果" 0.25 multiply_base
tag @a[distance=..5] add fire_0_ring

#提供生命恢复
execute as @a[distance=..5] unless predicate pld:effect_check/regeneration run effect give @s regeneration 5 0

