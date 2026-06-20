#要做的事
setblock 279 39 117 minecraft:command_block{Command:"function pld:npcs/middle/chat41"} replace 
setblock 287 39 101 minecraft:command_block{Command:"function pld:npcs/middle/chat42"} replace 


kill @e[type=villager,tag=!panling]
execute positioned 279 39 117 run function pld:npcs/middle/chat41
execute positioned 287 39 101 run function pld:npcs/middle/chat42
#区块卸载
forceload remove 282 108 282 118
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/18_-2/pre 1t