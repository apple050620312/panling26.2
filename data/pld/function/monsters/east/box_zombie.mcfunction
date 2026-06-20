execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:zombie ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster","east_zombie"],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.east.box_zombie"}',Health:18.0f,DeathLootTable:"pld:east/entity/box_zombie",Attributes:[{Name:"max_health",Base:18d},{Name:"follow_range",Base:40d},{Name:"movement_speed",Base:0.2d},{Name:"attack_damage",Base:2d}],CanPickUpLoot:false,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,components:{unbreakable:{}}}]}

kill @s
