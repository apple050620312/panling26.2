execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:magma_cube ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster"],Health:60.0f,Size:3,CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance2.magma_cube"}',DeathLootTable:"pld:instance2/magma_cube",Attributes:[{Name:"max_health",Base:60d},{Name:"follow_range",Base:25d},{Name:"movement_speed",Base:0.2d},{Name:"attack_damage",Base:4d}],ActiveEffects:[{Id:11b,Duration:10000000,ShowParticles:false}]}

kill @s