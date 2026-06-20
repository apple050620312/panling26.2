#tag death_count
tag @s add counting
execute as @e[team=monster,tag=death_count] run scoreboard players add @a[tag=counting] test_firecheck 1
execute as @e[team=monster,tag=death_count] run scoreboard players add @a[tag=counting] test_bodycheck 1
execute as @e[team=monster,tag=death_count] run scoreboard players add @a[tag=counting] instance3_kill 1
execute as @e[team=monster,tag=death_count] run scoreboard players add @a[tag=counting] bird_kill 1

execute as @e[team=monster,tag=death_count,type=skeleton] run scoreboard players add @a[tag=counting] kill_green 1
execute as @e[team=monster,tag=death_count,type=husk] run scoreboard players add @a[tag=counting] kill_red 1
execute as @e[team=monster,tag=death_count,type=zombie] run scoreboard players add @a[tag=counting] kill_white 1


execute as @e[team=monster,tag=death_count,type=zombie,tag=east_zombie] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs east_zombie
execute as @e[team=monster,tag=death_count,type=skeleton,tag=east_skeleton] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs east_skeleton
execute as @e[team=monster,tag=death_count,type=spider,tag=east_spider] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs east_spider
execute as @e[team=monster,tag=death_count,type=spider,tag=east_boss] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs east_boss
execute as @e[team=monster,tag=death_count,type=spider,tag=north_spider] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs north_spider
execute as @e[team=monster,tag=death_count,type=skeleton,tag=north_skeleton] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs north_skeleton
execute as @e[team=monster,tag=death_count,type=cave_spider,tag=north_cave_spider] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs north_cave_spider
execute as @e[team=monster,tag=death_count,type=skeleton,tag=north_boss] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs north_boss
execute as @e[team=monster,tag=death_count,type=zombie,tag=north_zombie] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs north_zombie
execute as @e[team=monster,tag=death_count,type=zombie,tag=south_zombie] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_zombie
execute as @e[team=monster,tag=death_count,type=skeleton,tag=south_skeleton] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_skeleton
execute as @e[team=monster,tag=death_count,type=wither_skeleton,tag=south_wither_skeleton] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_wither_skeleton
execute as @e[team=monster,tag=death_count,type=blaze,tag=south_blaze] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_blaze
execute as @e[team=monster,tag=death_count,type=magma_cube,tag=south_magma_cube] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_magma_cube
execute as @e[team=monster,tag=death_count,type=husk,tag=south_wither_husk] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_husk
execute as @e[team=monster,tag=death_count,type=husk,tag=south_boss] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_bosshusk
execute as @e[team=monster,tag=death_count,type=magma_cube,tag=south_boss] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs south_bosscube
execute as @e[team=monster,tag=death_count,type=wither_skeleton,tag=west_boss] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs west_boss
execute as @e[team=monster,tag=death_count,type=skeleton,tag=west_skeleton] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs west_skeleton
execute as @e[team=monster,tag=death_count,type=zombie,tag=west_zombie] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs west_zombie
execute as @e[team=monster,tag=death_count,type=cave_spider,tag=west_cave_spider] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs west_cave_spider
execute as @e[team=monster,tag=death_count,type=wither_skeleton,tag=te17_wither_skeleton] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs te17_wither_skeleton
execute as @e[team=monster,tag=death_count,type=skeleton,tag=te17_skeleton] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs te17_skeleton
execute as @e[team=monster,tag=death_count,type=zombie,tag=te17_zombie] run advancement grant @a[tag=counting] only pld:other/kill_all_mobs te17_zombie





tag @s remove counting