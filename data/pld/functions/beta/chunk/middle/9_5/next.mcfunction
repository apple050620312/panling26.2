
#要做的事
setblock 150 43 128 minecraft:command_block{Command:"function pld:npcs/middle/chat28"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 150 43 128 run function pld:npcs/middle/chat28
#区块卸载
forceload remove 150 128
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/9_8/pre 1t