execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:skeleton ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance1.skeleton"}',DeathLootTable:"pld:instance1/skeleton",Health:80.0f,Attributes:[ {Name:"max_health",Base:80d}, {Name:"follow_range",Base:30d}, {Name:"movement_speed",Base:0.2d}, {Name:"attack_damage",Base:0d}, {Name:"knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{id:"bow",count:1,components:{unbreakable:{},enchantments:{levels:{power:12,punch:1}}}},{}]}
kill @s
