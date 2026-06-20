#区块强加载
forceload add -418 157
#要做的事
setblock -420 111 159 minecraft:command_block[block_entity_data={Command:"function pld:system/spawnpoint/spawnpointset"}] replace 
#区块卸载
forceload remove -418 157
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-28_9 1t