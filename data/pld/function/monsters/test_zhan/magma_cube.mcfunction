
execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:magma_cube ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,ActiveEffects:[{Id:11b,Amplifier:2,Duration:10000000,ShowParticles:false}],Size:3,CustomName:'{"translate":"pl.monster.test_zhan.magma_cube"}',DeathLootTable:"pld:empty",Health:80.0f,Attributes:[ {Name:"max_health",Base:80}, {Name:"movement_speed",Base:0.2d}, {Name:"attack_damage",Base:5d}, {Name:"follow_range",Base:20d}, {Name:"knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
kill @s