#区块强加载
forceload add 1290 41 1290 41
#要做的事
setblock 1292 76 40 air

#区块卸载
forceload remove 1290 41 1290 41
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/80_5 1t