
#要做的事
setblock 186 42 139 minecraft:command_block{Command:"function pld:npcs/middle/chat31"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 186 42 139 run function pld:npcs/middle/chat31
#区块卸载
forceload remove 181 135
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/11_12/pre 1t