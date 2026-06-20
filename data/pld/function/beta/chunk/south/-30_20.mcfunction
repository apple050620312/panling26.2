#区块强加载
forceload add -464 331
#要做的事
setblock -464 94 332 minecraft:command_block[block_entity_data={Command:"function pld:system/spawnpoint/spawnpointset"}] replace 
#区块卸载
forceload remove -464 331
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/1_19 1t