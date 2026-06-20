#区块强加载
forceload add 1286 88 
#要做的事

#区块卸载
forceload remove 1286 88 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/81_1 1t
