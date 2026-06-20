effect give @e[tag=monster,distance=..10] slowness 5 1

execute as @a[distance=..10] unless predicate pld:effect_check/regeneration run effect give @s regeneration 5 1 false