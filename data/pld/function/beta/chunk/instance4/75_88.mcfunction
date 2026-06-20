#区块强加载
forceload add 1201 1420 1197 1454
#要做的事
setblock 1202 84 1421 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 990 67 1545"}] replace
setblock 1201 84 1421 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 990 67 1545"}] replace
setblock 1200 84 1421 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 990 67 1545"}] replace
setblock 1199 84 1421 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 990 67 1545"}] replace

setblock 1197 74 1454 air
fill 1206 78 1441 1206 78 1445 minecraft:barrier
fill 1204 89 1424 1204 88 1426 minecraft:barrier
fill 1205 88 1427 1205 88 1429 barrier
fill 1205 88 1430 1205 80 1434 minecraft:barrier

#区块卸载
forceload remove 1201 1420 1197 1454
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/76_76 1t