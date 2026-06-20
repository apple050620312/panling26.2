#区块强加载
forceload add -193 -701 -213 -700
#要做的事

fill -193 82 -701 -208 36 -701 barrier
fill -213 82 -700 -209 36 -700 minecraft:barrier

#区块卸载
forceload remove -193 -701 -213 -700
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-14_-19 1t