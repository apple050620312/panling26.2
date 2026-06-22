execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon skeleton ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster","east_skeleton"],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.east.box_skeleton"}',Health:12.0f,DeathLootTable:"pld:east/entity/box_skeleton",Attributes:[{Name:"max_health",Base:12d},{Name:"follow_range",Base:20d},{Name:"movement_speed",Base:0.2d},{Name:"attack_damage",Base:0d}],CanPickUpLoot:false,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{unbreakable:{}}}],HandItems:[{id:"minecraft:bow",count:1},{}]}

kill @s
