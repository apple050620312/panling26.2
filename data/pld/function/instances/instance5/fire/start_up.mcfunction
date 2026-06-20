scoreboard players set @s instance5_fire 1
#bossbar打开
bossbar set pl:instance5_fire visible true
tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.fire"}
fill 3056 127 -1874 3136 127 -1801 minecraft:air replace minecraft:obsidian 
fill 3056 128 -1874 3136 128 -1801 minecraft:lava replace minecraft:prismarine
fill 3056 128 -1874 3136 128 -1801 minecraft:obsidian replace minecraft:prismarine_bricks
fill 3056 127 -1874 3136 127 -1801 minecraft:air replace minecraft:obsidian 
fill 3130 127 -1868 3134 127 -1871 minecraft:obsidian replace air
summon minecraft:wither_skeleton 3122 149 -1820 {Team:"monster",Tags:["panling","core","undead","monster"],PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance5.fire_core"}',DeathLootTable:"pld:instance5/core",Health:1000.0f,Attributes:[ {Name:"generic.max_health",Base:1000d}, {Name:"generic.follow_range",Base:0d}, {Name:"generic.movement_speed",Base:0d}, {Name:"generic.attack_damage",Base:0d}, {Name:"generic.knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
summon minecraft:magma_cube 3113 129 -1842 {Team:"monster",Tags:["panling","fire","not_undead","monster"],PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,Size:9,CustomName:'{"translate":"pl.monster.instance5.fire_cube"}',DeathLootTable:"pld:instance5/core",Health:200.0f,Attributes:[ {Name:"generic.max_health",Base:200d}, {Name:"generic.movement_speed",Base:0.2d}, {Name:"generic.attack_damage",Base:20d},  {Name:"generic.follow_range",Base:100d}, {Name:"generic.knockback_resistance",Base:0d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
function pld:instances/instance5/fire/player_check
