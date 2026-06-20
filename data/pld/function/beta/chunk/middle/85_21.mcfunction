#区块强加载
forceload add 1363 342
#要做的事
setblock 1363 37 342 air
setblock 1365 37 342 air
#区块卸载
forceload remove 1363 342
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/85_31 1t