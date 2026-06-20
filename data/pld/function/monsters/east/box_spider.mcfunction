execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:spider ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster","east_spider"],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.east.box_spider"}',Health:8.0f,DeathLootTable:"pld:east/entity/box_spider",Attributes:[{Name:"max_health",Base:8d},{Name:"follow_range",Base:10d},{Name:"movement_speed",Base:0.3d},{Name:"attack_damage",Base:3d}],CanPickUpLoot:false,ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

kill @s
