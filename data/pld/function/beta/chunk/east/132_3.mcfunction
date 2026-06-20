#区块强加载
forceload add 2123 55
#要做的事
setblock 2120 58 53 minecraft:command_block[block_entity_data={Command:"execute as @p[x=2121,y=60,z=53,distance=..5] run function pld:system/altars/dragon/outdragontest"}] destroy 
#区块卸载
forceload remove 2123 55
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/133_0 1t