execute if block ~ ~2 ~ air if block ~ ~3 ~ air run summon minecraft:zombie ~ ~2 ~ {Team:"monster",Tags:["panling","undead","monster","attack_npc"],CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.name.final_battle.zombie"}',DeathLootTable:"pld:empty",Health:70.0f,Attributes:[ {Name:"generic.max_health",Base:70d}, {Name:"generic.movement_speed",Base:0.3d}, {Name:"generic.attack_damage",Base:2d}, {Name:"generic.follow_range",Base:100d}, {Name:"generic.knockback_resistance",Base:1d} ],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:2s}],Unbreakable:1b}}],HandItems:[{id:"minecraft:golden_hoe",Count:1b},{}]}
#kill @s
#追击villager
execute as @e[tag=attack_npc] at @s run summon snowball ~ ~2.5 ~ {Motion:[0.0d,-10.0d,0.0d],Tags:["temp"]}
execute at @e[tag=attack_npc] run data modify entity @e[tag=temp,limit=1,sort=nearest] Owner set from entity @e[limit=1,type=villager,tag=core_npc] UUID
execute as @e[tag=attack_npc] run tag @s remove attack_npc

