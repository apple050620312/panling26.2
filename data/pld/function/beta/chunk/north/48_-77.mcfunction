#区块强加载
forceload add 778 -1225
#要做的事
setblock 776 34 -1227 minecraft:command_block{Command:"execute as @p[x=776,y=36,z=-1227,distance=..2] run function pld:system/altars/turtle/outtrutletest"} replace 
#区块卸载
forceload remove 778 -1225
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/59_-74 1t