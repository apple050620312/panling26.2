
execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:zombie ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster","te17_zombie"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.name.te17.zombie"}',DeathLootTable:"pld:te17",Health:80.0f,Attributes:[ {Name:"max_health",Base:80d}, {Name:"follow_range",Base:20d}, {Name:"movement_speed",Base:0.2d}, {Name:"attack_damage",Base:5d}, {Name:"knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{}],HandItems:[{id:"bamboo",Count:1b,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"knockback":2}}}},{}]}
kill @s