execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:blaze ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster","south_blaze"],Health:35.0f,CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.south.blaze"}',DeathLootTable:"pld:south/entity/blaze",Attributes:[{Name:"generic.max_health",Base:35d},{Name:"generic.follow_range",Base:20d},{Name:"generic.movement_speed",Base:0.2d},{Name:"generic.attack_damage",Base:0d}],}
kill @s 