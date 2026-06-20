execute as @e[type=skeleton] run function pld:system/tp_and_kill_self

#区块卸载
forceload remove 188 -40 170 -40
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/10_-6/pre 1t