execute store result score @s monster_count run execute if entity @e[tag=panling,tag=monster,distance=..20]

execute if score @s monster_count matches ..9 run summon minecraft:blaze ~ ~ ~ {Team:"monster",Tags:["panling","not_undead","monster"],Health:80.0f,CustomNameVisible:1b,CustomName:'{"translate":"pl.monster.instance2.blaze"}',DeathLootTable:"pld:instance2/blaze",Attributes:[{Name:"max_health",Base:80d},{Name:"follow_range",Base:20d},{Name:"movement_speed",Base:0.25d},{Name:"attack_damage",Base:0d}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{unbreakable:{},enchantments:{levels:{"thorns":2}}}}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

kill @s
