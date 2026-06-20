
#要做的事
setblock 1371 101 436 air
setblock 1378 100 439 minecraft:command_block{Command:"function pld:npcs/penglai/tong1b"} replace
setblock 1376 72 436 minecraft:command_block{Command:"function pld:npcs/penglai/tong1c"} replace
setblock 1376 72 435 minecraft:command_block{Command:"function pld:npcs/penglai/tong2c"} replace
setblock 1384 101 436 minecraft:command_block{Command:"execute as @p[distance=..10] run function pld:system/zftest/outtestroom"} replace
setblock 1382 133 436 minecraft:command_block{Command:"execute as @p[x=1382,y=135,z=436,distance=..2] run function pld:system/zftest/outzftest"} replace
setblock 1382 73 436 minecraft:command_block{Command:"tp @p[distance=..10] 333 34 -718 -90 0"} replace

kill @e[type=villager,tag=!panling]
execute positioned 1378 100 439 run function pld:npcs/penglai/tong1b
execute positioned 1376 72 436 run function pld:npcs/penglai/tong1c
execute positioned 1376 72 435 run function pld:npcs/penglai/tong2c
#区块卸载
forceload remove 1366 436 1381 441
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/-2_-58 1t