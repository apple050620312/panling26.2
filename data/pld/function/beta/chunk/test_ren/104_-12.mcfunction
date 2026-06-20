#区块强加载
forceload add 1670 -192
#要做的事
setblock 1670 3 -192 oak_log[axis=x]
setblock 1667 8 -177 oak_log[axis=x]
setblock 1666 7 -180 oak_log[axis=x]
setblock 1666 6 -183 oak_log[axis=x]
setblock 1666 5 -185 oak_log[axis=x]
setblock 1667 5 -188 oak_log[axis=x]
setblock 1668 4 -189 oak_log[axis=x]

#区块卸载
forceload remove 1670 -192
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/104_-15 1t