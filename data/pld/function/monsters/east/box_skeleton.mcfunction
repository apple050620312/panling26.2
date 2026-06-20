execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon skeleton ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster","east_skeleton"],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.east.box_skeleton"}',Health:12.0f,DeathLootTable:"pld:east/entity/box_skeleton",Attributes:[{Name:"generic.max_health",Base:12d},{Name:"generic.follow_range",Base:20d},{Name:"generic.movement_speed",Base:0.2d},{Name:"generic.attack_damage",Base:0d}],CanPickUpLoot:false,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}

kill @s
