#区块强加载
forceload add 1308 57 1308 57
#要做的事
setblock 1307 76 59 air

#区块卸载
forceload remove 1308 57 1308 57
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/81_28 1t
