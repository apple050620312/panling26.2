function pld:instances/instance4/phase_time_re
tellraw @a[x=912,y=57,z=1214,dx=62,dy=52,dz=70] {"translate": "pl.info.instance4.fail1"}
execute at @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=ghast,limit=1] run summon minecraft:ghast ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster"],Glowing:1,PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance4.ghast1"}',DeathLootTable:"pld:empty",Health:500.0f,Attributes:[ {Name:"generic.max_health",Base:500}, {Name:"generic.movement_speed",Base:0.2d}, {Name:"generic.attack_damage",Base:0d},  {Name:"generic.follow_range",Base:40d}, {Name:"generic.knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
#恶魂回血
effect give @e[type=minecraft:ghast,x=912,y=57,z=1214,dx=62,dy=52,dz=70] minecraft:instant_health 1 10

#刷新怪物
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=skeleton] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=wither_skeleton] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=drowned] 944 -1000 1256
tp @e[x=912,y=57,z=1214,dx=62,dy=52,dz=70,type=guardian] 944 -1000 1256
execute if score #system instance4_bosshp matches 7 run function pld:instances/instance4/monster_summon/7
execute if score #system instance4_bosshp matches 1..6 run function pld:instances/instance4/monster_summon/6
