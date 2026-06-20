clear @p[x=-851,y=91,z=-209,distance=..20] lead
execute as @e[type=cow,x=-850,y=91,z=-205,distance=..20] run function pld:system/tp_and_kill_self
scoreboard players set @p[x=-851,y=91,z=-209,distance=..20] ex_xiantick 320
setblock -851 89 -199 minecraft:repeating_command_block{auto:1b,Command:"function pld:system/ex_xian/story_tick"} replace
