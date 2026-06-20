
#隊伍、pvp状态
team join attack @a[scores={pvp_team=1}]
team join defence @a[scores={pvp_team=2}]
scoreboard players set @a[scores={pvp_team=1..2}] inpvp 1
scoreboard players set @a[scores={pvp_team=1..2}] inbuy_area 0
scoreboard players set @a[scores={pvp_team=1..2}] feather_mainland -1
#重置玩家复活状态
scoreboard players set @a[scores={pvp_team=1..2}] pvp_relife_tick -1

#玩家移动
spawnpoint @a[team=attack] 1349 51 -1776
spawnpoint @a[team=defence] 1358 56 -1826

tp @a[scores={pvp_team=1}] 1349 51 -1776 -90 0
tp @a[scores={pvp_team=2}] 1358 56 -1826 -90 0

execute as @a[team=attack,scores={parkour_middle_in=1}] run function pld:system/parkour_middle/failed
execute as @a[team=defence,scores={parkour_middle_in=1}] run function pld:system/parkour_middle/failed

#进攻方
forceload add 1349 -1776
setblock 1353 51 -1776 air
setblock 1346 51 -1776 minecraft:cobblestone
forceload remove 1349 -1776
#防守方
forceload add 1355 -1826 1362 -1826
setblock 1362 56 -1826 air
setblock 1355 56 -1826 minecraft:oak_planks
forceload remove 1355 -1826 1362 -1826

#修复场地
forceload add 1411 -1820 1403 -1820
clone 1399 76 -1822 1409 76 -1814 1399 104 -1822
forceload remove 1411 -1820 1403 -1820
forceload add 1356 -1858 1368 -1856
clone 1356 76 -1858 1368 76 -1856 1356 104 -1858
forceload remove 1356 -1858 1368 -1856
forceload add 1347 -1847 1369 -1811
clone 1344 65 -1847 1369 77 -1811 1344 95 -1847
forceload remove 1347 -1847 1369 -1811
clone 1345 64 -1792 1362 77 -1761 1345 95 -1792
#重置水炮弹和铁轨修复装置
forceload add 1362 -1860
setblock 1362 104 -1860 minecraft:gold_block
forceload remove 1362 -1860
forceload add 1318 -1831
setblock 1318 99 -1831 minecraft:redstone_wall_torch[lit=false,facing=west]
forceload remove 1318 -1831
forceload add 1404 -1826
setblock 1404 104 -1826 minecraft:gold_block
forceload remove 1404 -1826
forceload add 1453 -1819
setblock 1453 104 -1819 minecraft:redstone_wall_torch[lit=false,facing=east]
forceload remove 1453 -1819


#重置地图-防守方胜利条件
scoreboard players set #system pvp1_delivered 0
scoreboard players set #system pvp1_deliveract -1

#世界-开战
scoreboard players set #system pvpevent 2
scoreboard players operation #system pvpevent_tick = #system pvpevent_all

tellraw @a[team=normal] {"translate":"pl.info.world_notice1"}
tellraw @a[team=normal] {"translate":"pl.info.pvp1_notice_inpvp"}
tellraw @a[team=normal] {"translate":"pl.info.world_notice2"}

title @a[team=attack] title {"translate":"pl.info.title_pvp_begin"}
title @a[team=defence] title {"translate":"pl.info.title_pvp_begin"}

execute as @a[team=attack] run attribute @s attack_damage modifier remove panling:mod_101_0_0_0_0
execute as @a[team=defence] run attribute @s attack_damage modifier remove panling:mod_101_0_0_0_0