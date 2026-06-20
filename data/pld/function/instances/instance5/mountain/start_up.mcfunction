scoreboard players set @s instance5_mt 1
bossbar set pl:instance5_mountain visible true
tellraw @a[x=2992,y=0,z=-2000,dx=271,dy=255,dz=303] {"translate": "pl.info.instance5.mt"}
summon minecraft:slime 3074 142 -1867 {Team:"monster",Tags:["panling","not_undead","monster","core"],Size:8,PersistenceRequired:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance5.mt_core"}',DeathLootTable:"pld:instance5/core",Health:1000.0f,Attributes:[ {Name:"max_health",Base:1000d}, {Name:"follow_range",Base:0d}, {Name:"movement_speed",Base:0d}, {Name:"attack_damage",Base:0d}, {Name:"knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
playsound entity.minecart.inside ambient @a 3120 164 -1840 15 1 0
clone 3141 99 -1853 3138 100 -1856 3164 129 -1832
clone 3141 99 -1853 3138 100 -1856 3151 129 -1811
clone 3141 99 -1853 3138 100 -1856 3096 129 -1795
clone 3141 99 -1853 3138 100 -1856 3149 129 -1849

clone 3154 99 -1853 3151 99 -1856 3151 129 -1826
clone 3154 99 -1853 3151 99 -1856 3161 129 -1818
clone 3154 99 -1853 3151 99 -1856 3108 129 -1883
clone 3154 99 -1853 3151 99 -1856 3165 129 -1844

clone 3145 99 -1853 3142 99 -1856 3121 129 -1798
clone 3145 99 -1853 3142 99 -1856 3095 129 -1882
clone 3145 99 -1853 3142 99 -1856 3158 129 -1858
clone 3145 99 -1853 3142 99 -1856 3170 129 -1823

schedule function pld:instances/instance5/mountain/start2 2s
schedule function pld:instances/instance5/mountain/start3 4s
schedule function pld:instances/instance5/mountain/start4 6s
schedule function pld:instances/instance5/mountain/start5 8s

