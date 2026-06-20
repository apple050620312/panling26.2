#区块强加载
forceload add -276 -623 -276 -625
#要做的事
setblock -276 32 -625 minecraft:cobblestone
setblock -277 32 -624 minecraft:cobblestone
setblock -278 32 -623 minecraft:cobblestone
#区块卸载
forceload remove -276 -623 -276 -625
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-22_-26 1t