scoreboard players set @s instance5_light 1
#bossbar
bossbar set pl:instance5_light_left visible true
bossbar set pl:instance5_light_right visible true

tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.light"}
summon minecraft:silverfish 3153 190 -1835 {Team:"monster",Tags:["panling","not_undead","monster","right"],PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance5.light_core"}',DeathLootTable:"pld:instance5/core",Health:500.0f,Attributes:[ {Name:"generic.max_health",Base:500d}, {Name:"generic.movement_speed",Base:0d}, {Name:"generic.attack_damage",Base:0d},  {Name:"generic.follow_range",Base:0d}, {Name:"generic.knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
summon minecraft:silverfish 3153 190 -1845 {Team:"monster",Tags:["panling","not_undead","monster","left"],PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance5.light_core"}',DeathLootTable:"pld:instance5/core",Health:500.0f,Attributes:[ {Name:"generic.max_health",Base:500d}, {Name:"generic.movement_speed",Base:0d}, {Name:"generic.attack_damage",Base:0d},  {Name:"generic.follow_range",Base:0d}, {Name:"generic.knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
schedule clear pld:instances/instance5/light/player_check
function pld:instances/instance5/light/player_check
