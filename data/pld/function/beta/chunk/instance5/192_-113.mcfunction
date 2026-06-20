#区块强加载
forceload add 3089 -1794
#要做的事
setblock 3089 126 -1794 minecraft:command_block[custom_data={Command:"function pld:instances/instance5/swamp/fill_position1"}] replace
#区块卸载
forceload remove 3089 -1794
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/192_-115 1t