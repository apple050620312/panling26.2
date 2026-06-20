execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:spider ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster","east_spider"],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.east.spider2"}',Health:15.6f,DeathLootTable:"pld:east/entity/spider2",Attributes:[{Name:"generic.max_health",Base:15.6d},{Name:"generic.follow_range",Base:10d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:5d}],CanPickUpLoot:false,ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
kill @s
