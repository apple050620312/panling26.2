#区块强加载
forceload add 3249 -743
#要做的事
setblock 3249 97 -743 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 239 20 692 0 10"}] replace 
#区块卸载
forceload remove 3249 -743
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/204_-50 1t