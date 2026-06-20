execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:spider ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster","north_spider"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.north.box_spider"}',DeathLootTable:"pld:north/entity/box_spider",Health:23.0f,Attributes:[{Name:"max_health",Base:23d},{Name:"follow_range",Base:20d},{Name:"movement_speed",Base:0.2d},{Name:"attack_damage",Base:6d}],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

kill @s