execute as @a[scores={ex_xiantick=320}] run tellraw @s {"translate":"pl.info.story.xe1"}
execute as @a[scores={ex_xiantick=280}] run tellraw @s {"translate":"pl.info.story.xe2"}
execute as @a[scores={ex_xiantick=240}] run tellraw @s {"translate":"pl.info.story.xe3"}
execute as @a[scores={ex_xiantick=200}] run tellraw @s {"translate":"pl.info.story.xe4"}
execute as @a[scores={ex_xiantick=160}] run tellraw @s {"translate":"pl.info.story.xe5"}
execute as @a[scores={ex_xiantick=120}] run tellraw @s {"translate":"pl.info.story.xe6"}
execute as @a[scores={ex_xiantick=80}] run tellraw @s {"translate":"pl.info.story.xe7"}
execute as @a[scores={ex_xiantick=40}] run tellraw @s {"translate":"pl.info.story.xe8"}
execute as @a[scores={ex_xiantick=0}] run function pld:system/ex_xian/reward
execute as @a[scores={ex_xiantick=0..}] run scoreboard players remove @s ex_xiantick 1
