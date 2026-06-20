execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:blaze ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster"],Health:80.0f,CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance2.blaze"}',DeathLootTable:"pld:instance2/blaze",Attributes:[{Name:"generic.max_health",Base:80d},{Name:"generic.follow_range",Base:20d},{Name:"generic.movement_speed",Base:0.25d},{Name:"generic.attack_damage",Base:0d}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"thorns",lvl:2}],Unbreakable:1}}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

kill @s
