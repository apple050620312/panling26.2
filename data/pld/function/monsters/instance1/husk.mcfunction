execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:husk ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance1.husk"}',DeathLootTable:"pld:instance1/husk",Health:150.0f,Attributes:[ {Name:"max_health",Base:150d}, {Name:"follow_range",Base:50d}, {Name:"movement_speed",Base:0.2d}, {Name:"attack_damage",Base:7d}, {Name:"knockback_resistance",Base:1d} ],ActiveEffects:[{Id:12b,Duration:10000000,ShowParticles:false}],ArmorItems:[{},{},{},{}],HandItems:[{id:"golden_sword",Count:1b},{}]}
kill @s
