#区块强加载
forceload add 1307 23 1307 23
#要做的事
setblock 1307 76 23 air

#区块卸载
forceload remove 1307 23 1307 23
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/81_3 1t