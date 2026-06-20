scoreboard players set @s instance5_water 1
bossbar set pl:instance5_water visible true
tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.water"}
fill 3191 150 -1839 3191 151 -1839 minecraft:water
fill 3191 150 -1839 3191 151 -1839 minecraft:water
fill 3166 168 -1782 3166 169 -1782 minecraft:water
fill 3191 150 -1839 3191 151 -1839 minecraft:water
fill 3074 174 -1870 3074 175 -1870 minecraft:water
fill 3133 135 -1877 3134 135 -1877 minecraft:water
fill 3064 175 -1821 3064 176 -1821 minecraft:water
fill 3123 150 -1826 3123 151 -1826 minecraft:water
fill 3133 135 -1877 3134 135 -1877 minecraft:water
fill 3165 158 -1784 3165 157 -1784 minecraft:water
summon elder_guardian 3063 172 -1822 {Team:"monster",Tags:["panling","not_undead","monster","core"],PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance5.water_core"}',DeathLootTable:"pld:instance5/core",Health:1000.0f,Attributes:[ {Name:"max_health",Base:1000d}, {Name:"follow_range",Base:0d}, {Name:"movement_speed",Base:0d}, {Name:"attack_damage",Base:0d}, {Name:"knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]} 
schedule clear pld:instances/instance5/water/player_check
function pld:instances/instance5/water/player_check