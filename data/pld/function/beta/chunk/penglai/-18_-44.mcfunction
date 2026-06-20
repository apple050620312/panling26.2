#区块强加载
forceload add -273 -703 -275 -705
#要做的事
setblock -273 38 -703 minecraft:barrier
setblock -274 38 -704 minecraft:barrier

fill -275 38 -705 -275 39 -705 minecraft:barrier
fill -276 38 -705 -276 53 -705 minecraft:barrier
fill -274 53 -702 -273 42 -702 minecraft:barrier
fill -275 53 -704 -275 42 -703 minecraft:barrier
fill -277 38 -706 -277 53 -706 minecraft:barrier
fill -279 53 -707 -278 38 -707 minecraft:barrier
fill -280 38 -708 -280 53 -708 minecraft:barrier
fill -281 38 -709 -281 53 -709 minecraft:barrier
fill -281 38 -710 -281 45 -710 minecraft:barrier
fill -282 38 -711 -282 45 -711 minecraft:barrier
fill -283 38 -712 -283 44 -712 minecraft:barrier
fill -284 43 -713 -284 38 -713 minecraft:barrier
fill -285 38 -714 -285 43 -714 minecraft:barrier

#区块卸载
forceload remove -273 -703 -275 -705
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/0_57 1t