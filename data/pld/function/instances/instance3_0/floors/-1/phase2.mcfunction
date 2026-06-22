#进入p2标记
scoreboard players set #system in3_-1f_phase 2
#开启、关闭bossbar
bossbar set pld:instance3_0_floor1 visible false
bossbar set pld:instance3_0_boss1hp visible true
#召唤标记实体
summon armor_stand 2791 42 -762 {Tags:["in30_-1"]}
#召唤boss
summon minecraft:zombie 2791 31 -763 {Team:"monster",Tags:["panling","undead","monster","in30_boss1"],PersistenceRequired:1,Silent:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance3_0.boss1"}',DeathLootTable:"pld:empty",Health:400.0f,Attributes:[{Name:"max_health",Base:400d},{Name:"movement_speed",Base:0.3d},{Name:"attack_damage",Base:5d},{Name:"follow_range",Base:100d},{Name:"knockback_resistance",Base:1d}],ArmorItems:[{id:"minecraft:chainmail_boots",count:1,components:{unbreakable:{}}},{id:"minecraft:chainmail_leggings",count:1,components:{unbreakable:{}}},{id:"minecraft:chainmail_chestplate",count:1,components:{unbreakable:{}}},{id:"minecraft:lime_terracotta",count:1}],HandItems:[{id:"golden_sword",count:1,components:{unbreakable:{}}},{}]}
#boss技能tick
scoreboard players set #system in3_boss1_skillt 100
#boss出场喊话
tellraw @a[x=2791,y=30,z=-763,distance=..21] {"translate":"pl.info.instance3_0.boss_p"}