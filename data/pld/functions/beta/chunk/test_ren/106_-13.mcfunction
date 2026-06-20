#区块强加载
forceload add 1697 -199
#要做的事
setblock 1697 45 -197 minecraft:command_block{Command:"execute as @p[x=1697,y=47,z=-197,distance=..3] run function pld:test/ren/earth/out"} replace 

#区块卸载
forceload remove 1697 -199
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/108_-16 1t