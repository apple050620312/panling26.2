#区块强加载
forceload add -317 801
#要做的事
setblock -316 8 800 minecraft:command_block{Command:"execute as @p[x=-316,y=11,z=801,distance=..3] run function pld:instances/instance2/in"} replace 

#区块卸载
forceload remove -317 801
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-21_29 1t