#区块强加载
forceload add 3170 -1835
#要做的事
setblock 3171 126 -1834 minecraft:command_block{Command:"function pld:instances/instance5/swamp/fill_position3"} replace
#区块卸载
forceload remove 3170 -1835
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance5/202_-118 1t