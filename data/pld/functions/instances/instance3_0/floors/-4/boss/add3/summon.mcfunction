tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_skill3"}
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss_skill4_3"}
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_tip"}
summon minecraft:skeleton ~ ~ ~ {Team:"monster",Tags:["panling","undead","monster","in30_boss3"],PersistenceRequired:1,Silent:1,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,ActiveEffects:[{Id:11b,Amplifier:4,Duration:10000000,ShowParticles:false}],CustomName:'{"translate":"pl.monster.instance3_0.boss3"}',DeathLootTable:"pld:empty",Health:800.0f,Attributes:[{Name:"generic.max_health",Base:800d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.follow_range",Base:100d},{Name:"generic.knockback_resistance",Base:1d}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:diamond_block",Count:1b}],HandItems:[{id:"bow",Count:1b,tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:15},{id:"flame",lvl:1},{id:"punch",lvl:1}]}},{}]}
#设置技能冷却
scoreboard players set #system in3_add3_skillt 100
scoreboard players set #system in3_add3_skillc 5
scoreboard players set #system in3_boss4_skillc 5

#
scoreboard players set #system in3_add3_anti_cool 40
