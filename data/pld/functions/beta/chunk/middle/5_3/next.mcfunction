
#要做的事
setblock 83 43 60 minecraft:command_block{Command:"function pld:npcs/middle/chat51"} replace 
setblock 94 43 57 minecraft:command_block{Command:"function pld:npcs/middle/chat52"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 83 43 60 run function pld:npcs/middle/chat51
execute positioned 94 43 57 run function pld:npcs/middle/chat52
#区块卸载
forceload remove 89 60
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/5_5/pre 1t