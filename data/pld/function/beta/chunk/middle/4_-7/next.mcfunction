
#要做的事
kill @e[type=villager,tag=!panling]

#区块卸载
forceload remove 77 -100 82 -100
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_4/pre 1t