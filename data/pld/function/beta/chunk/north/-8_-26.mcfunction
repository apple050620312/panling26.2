#区块强加载
forceload add -113 -401
#要做的事
setblock -114 2 -401 minecraft:command_block{Command:"execute as @p[x=-114,y=4,z=-401,distance=..5,scores={turtle_incheck=1}] run function pld:system/altars/turtle/intoturtle"} replace

#区块卸载
forceload remove -113 -401
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-8_-35 1t
