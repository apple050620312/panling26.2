#水位变动
function pld:instances/instance4/water_line

function pld:instances/instance4/phase_time_re

#刷新怪物
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=skeleton] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=wither_skeleton] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=drowned] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=guardian] 944 -1000 1256
execute if score #system instance4_bosshp matches 7 run function pld:instances/instance4/monster_summon/7
execute if score #system instance4_bosshp matches 1..6 run function pld:instances/instance4/monster_summon/6

#补鸟
execute if score #system instance4_bird matches 0 run summon minecraft:ghast 946 98 1266 {Team:"monster",Tags:["panling","not_undead","monster"],Glowing:1,PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance4.ghast1"}',DeathLootTable:"pld:empty",Health:500.0f,Attributes:[ {Name:"generic.max_health",Base:500}, {Name:"generic.movement_speed",Base:0.2d}, {Name:"generic.attack_damage",Base:0d},  {Name:"generic.follow_range",Base:40d}, {Name:"generic.knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
summon minecraft:ghast 927 93 1248 {Team:"monster",Tags:["panling","not_undead","monster"],Glowing:1,PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance4.ghast1"}',DeathLootTable:"pld:empty",Health:500.0f,Attributes:[ {Name:"generic.max_health",Base:500}, {Name:"generic.movement_speed",Base:0.2d}, {Name:"generic.attack_damage",Base:0d},  {Name:"generic.follow_range",Base:40d}, {Name:"generic.knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
summon minecraft:ghast 961 99 1242 {Team:"monster",Tags:["panling","not_undead","monster"],Glowing:1,PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance4.ghast1"}',DeathLootTable:"pld:empty",Health:500.0f,Attributes:[ {Name:"generic.max_health",Base:500}, {Name:"generic.movement_speed",Base:0.2d}, {Name:"generic.attack_damage",Base:0d},  {Name:"generic.follow_range",Base:40d}, {Name:"generic.knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

scoreboard players set #system instance4_tag 0
