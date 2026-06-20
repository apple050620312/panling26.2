effect give @s resistance 5 0
effect give @s saturation 1 1

tag @s add no_effect_add
effect give @a[tag=!no_effect_add,distance=..3] regeneration 5 0
tag @s remove no_effect_add