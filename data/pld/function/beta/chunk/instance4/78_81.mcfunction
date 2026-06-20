#区块强加载
forceload add 1261 1305
#要做的事
fill 1261 70 1307 1259 70 1307 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 1063 74 1440"}] replace

#区块卸载
forceload remove 1261 1305
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/78_87 1t