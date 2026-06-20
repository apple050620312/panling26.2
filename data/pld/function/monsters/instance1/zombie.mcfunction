execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:zombie ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance1.zombie"}',DeathLootTable:"pld:instance1/zombie",Health:100.0f,Attributes:[ {Name:"generic.max_health",Base:100d}, {Name:"generic.follow_range",Base:50d}, {Name:"generic.movement_speed",Base:0.2d}, {Name:"generic.attack_damage",Base:10d}, {Name:"generic.knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{}],HandItems:[{id:"iron_sword",Count:1b},{}]}
kill @s
