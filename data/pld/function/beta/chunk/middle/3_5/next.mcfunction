#要做的事
setblock 61 43 84 minecraft:command_block{Command:"function pld:npcs/middle/chat47"} replace 
setblock 63 43 88 minecraft:command_block{Command:"function pld:npcs/middle/chat48"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 61 43 84 run function pld:npcs/middle/chat47
execute positioned 63 43 88 run function pld:npcs/middle/chat48
#区块卸载
forceload remove 59 85 68 88
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/3_6/pre 1t