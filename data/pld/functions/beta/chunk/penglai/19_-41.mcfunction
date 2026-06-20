#区块强加载
forceload add 310 -650
#要做的事
fill 306 32 -655 308 32 -655 minecraft:barrier
#区块卸载
forceload remove 310 -650
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/19_-43 1t