#进入p2标记
scoreboard players set #system in3_-2f_phase 2
#开启、关闭bossbar
bossbar set pld:instance3_0_floor2 visible false
bossbar set pld:instance3_0_boss2hp visible true
#召唤标记实体
summon armor_stand 2834 42 -763 {Tags:["in30_-2"]}

#召唤boss
summon minecraft:zombie 2834 31 -763 {Team:"monster",Tags:["panling","undead","monster","in30_boss2"],PersistenceRequired:1,Silent:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance3_0.boss2"}',DeathLootTable:"pld:empty",Health:600.0f,Attributes:[{Name:"max_health",Base:600d},{Name:"movement_speed",Base:0.1d},{Name:"attack_damage",Base:10d},{Name:"follow_range",Base:100d},{Name:"knockback_resistance",Base:1d}],ArmorItems:[{id:"minecraft:chainmail_boots",count:1,components:{unbreakable:{}}},{id:"minecraft:chainmail_leggings",count:1,components:{unbreakable:{}}},{id:"minecraft:chainmail_chestplate",count:1,components:{unbreakable:{}}},{id:"minecraft:jack_o_lantern",count:1}],HandItems:[{id:"golden_axe",count:1,components:{unbreakable:{}}},{}]}
#boss技能tick
scoreboard players set #system in3_boss2_skillt 100
#boss出场喊话
tellraw @a[x=2834,y=30,z=-763,distance=..21] {"translate":"pl.info.instance3_0.boss_p"}