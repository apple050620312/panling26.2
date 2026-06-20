
#队伍、pvp状态、进图
team join attack @a[scores={pvp_team=5}]
team join defence @a[scores={pvp_team=6}]
scoreboard players set @a[scores={pvp_team=5..6}] inpvp 1
scoreboard players set @a[scores={pvp_team=5..6}] inbuy_area 0
scoreboard players set @a[scores={pvp_team=5..6}] feather_mainland -1
#重置玩家复活状态
scoreboard players set @a[scores={pvp_team=5..6}] pvp_relife_tick -1


spawnpoint @a[team=attack] 2338 184 -1801
spawnpoint @a[team=defence] 2386 184 -1801

tp @a[scores={pvp_team=5}] 2338 184 -1801 -90 0
tp @a[scores={pvp_team=6}] 2386 184 -1801 90 0

execute as @a[team=attack,scores={parkour_middle_in=1}] run function pld:system/parkour_middle/failed
execute as @a[team=defence,scores={parkour_middle_in=1}] run function pld:system/parkour_middle/failed


#重置悬赏情况
advancement revoke @a[team=attack] only pld:system/pvp/rewarded
advancement revoke @a[team=defence] only pld:system/pvp/rewarded


#门
forceload add 2387 -1801
setblock 2387 183 -1801 minecraft:oak_trapdoor[half=top]
setblock 2390 184 -1801 minecraft:cobblestone
forceload remove 2387 -1801

forceload add 2339 -1801
setblock 2339 183 -1801 minecraft:oak_trapdoor[half=top]
setblock 2336 184 -1801 minecraft:cobblestone
forceload remove 2339 -1801

#重置地图-仙族守卫站在核心上
forceload add 2369 -1801 2349 -1801
kill @e[type=skeleton,tag=pvp3]
summon minecraft:skeleton 2369 113 -1801 {Tags:["panling","pvp3"],PersistenceRequired:1b,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.npc.name.pvp3_guard"}',DeathLootTable:"pld:empty",Health:50.0f,Attributes:[{Name:"generic.max_health",Base:50d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:10d},{Name:"generic.follow_range",Base:40d},{Name:"generic.knockback_resistance",Base:1d}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value: "eyJ0aW1lc3RhbXAiOjE0MTEyODUyNjk4MTMsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80MzFlMTM0NTdmYTczOTllZTg5NmJiZGQ5Y2YwMmE4OTUzYzExMjY3ZjU4Yzk4NmY0ZGJlYjVlZWU5NjYxNSJ9fX0="}]}}}}],HandItems:[{id:"bow",Count:1b,tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:13},{id:"punch",lvl:5}]}},{}]}
summon minecraft:skeleton 2349 113 -1801 {Tags:["panling","pvp3"],PersistenceRequired:1b,CanPickUpLoot:false,ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],CustomNameVisible:1b,CustomName:'{"translate":"pl.npc.name.pvp3_guard"}',DeathLootTable:"pld:empty",Health:50.0f,Attributes:[{Name:"generic.max_health",Base:50d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:10d},{Name:"generic.follow_range",Base:40d},{Name:"generic.knockback_resistance",Base:1d}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;260497508,-338736586,-1333673891,-1422241753],Properties:{textures:[{Value: "eyJ0aW1lc3RhbXAiOjE0MTEyODUyNjk4MTMsInByb2ZpbGVJZCI6IjViYjE5ZjBjNDBjNjQzMmZhMGY0NTQyZDAzY2YzZGNjIiwicHJvZmlsZU5hbWUiOiJBdWRpYWNlMDgwOSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80MzFlMTM0NTdmYTczOTllZTg5NmJiZGQ5Y2YwMmE4OTUzYzExMjY3ZjU4Yzk4NmY0ZGJlYjVlZWU5NjYxNSJ9fX0="}]}}}}],HandItems:[{id:"bow",Count:1b,tag:{Unbreakable:1,Enchantments:[{id:"power",lvl:13},{id:"punch",lvl:5}]}},{}]}
team join defence @e[tag=pvp3]
forceload remove 2369 -1801 2349 -1801




#重置地图-进攻方胜利条件
scoreboard players set #system pvp3_next_save 0
scoreboard players set #system pvp3_save_count 0


#世界-开战
scoreboard players set #system pvpevent 6
scoreboard players operation #system pvpevent_tick = #system pvpevent_all

tellraw @a[team=normal] {"translate":"pl.info.world_notice1"}
tellraw @a[team=normal] {"translate":"pl.info.pvp3_notice_inpvp"}
tellraw @a[team=normal] {"translate":"pl.info.world_notice2"}

title @a[team=attack] title {"translate":"pl.info.title_pvp_begin"}
title @a[team=defence] title {"translate":"pl.info.title_pvp_begin"}

execute as @a[team=attack] run attribute @s generic.attack_damage modifier remove 101-0-0-0-0
execute as @a[team=defence] run attribute @s generic.attack_damage modifier remove 101-0-0-0-0