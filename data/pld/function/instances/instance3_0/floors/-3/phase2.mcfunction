#进入p2标记
scoreboard players set #system in3_-3f_phase 2
#开启、关闭bossbar
bossbar set pld:instance3_0_floor3 visible false
bossbar set pld:instance3_0_boss3hp visible true
#召唤标记实体
summon armor_stand 2834 42 -804 {Tags:["in30_-3"]}
#
scoreboard players set #system in3_-3f_anti_cool 40


#召唤boss
summon minecraft:skeleton 2834 31 -806 {Team:"monster",Tags:["panling","undead","monster","in30_boss3"],PersistenceRequired:1,Silent:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,ActiveEffects:[{Id:11b,Amplifier:4,Duration:10000000,ShowParticles:false}],CustomName:'{"translate":"pl.monster.instance3_0.boss3"}',DeathLootTable:"pld:empty",Health:800.0f,Attributes:[{Name:"generic.max_health",Base:800d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.follow_range",Base:100d},{Name:"generic.knockback_resistance",Base:1d}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,components:{"minecraft:unbreakable":{}}},{id:"minecraft:chainmail_leggings",Count:1b,components:{"minecraft:unbreakable":{}}},{id:"minecraft:chainmail_chestplate",Count:1b,components:{"minecraft:unbreakable":{}}},{id:"minecraft:diamond_block",Count:1b}],HandItems:[{id:"bow",Count:1b,tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:15},{id:"flame",lvl:1},{id:"punch",lvl:1}]}},{}]}
#boss技能tick
scoreboard players set #system in3_boss3_skillt 100
scoreboard players set #system in3_boss3_skillc 5
#boss出场喊话
tellraw @a[x=2834,y=31,z=-806,distance=..21] {"translate":"pl.info.instance3_0.boss_p"}
tellraw @a[x=2834,y=31,z=-806,distance=..21] {"translate":"pl.info.instance3_0.boss_skill3tip"}

