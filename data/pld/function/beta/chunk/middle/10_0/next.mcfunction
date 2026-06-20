
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self

#区块卸载
forceload remove 172 7 185 5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/10_7/pre 1t