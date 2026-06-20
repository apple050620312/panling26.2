#区块强加载
forceload add 310 -650 265 -681
#要做的事
setblock 262 34 -704 minecraft:barrier
setblock 262 32 -704 minecraft:barrier
fill 263 32 -703 263 32 -702 minecraft:barrier
fill 264 32 -701 264 32 -700 minecraft:barrier
fill 265 32 -699 265 32 -697 minecraft:barrier
fill 266 32 -696 266 32 -695 minecraft:barrier
fill 267 32 -694 267 32 -690 minecraft:barrier
fill 268 32 -689 268 32 -684 minecraft:barrier
#区块卸载
forceload remove 310 -650 265 -681
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/19_-41 1t