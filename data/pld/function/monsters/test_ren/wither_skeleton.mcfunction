
execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:wither_skeleton ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.test_ren.wither_skeleton"}',DeathLootTable:"pld:empty",Health:80.0f,Attributes:[ {Name:"max_health",Base:80}, {Name:"movement_speed",Base:0.1d}, {Name:"attack_damage",Base:8d}, {Name:"follow_range",Base:20d}, {Name:"knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{id:"golden_sword",Count:1b,components:{unbreakable:{},minecraft:enchantments:{levels:{"knockback":2}}}},{}]}
kill @s