#要做的事
setblock 224 41 78 minecraft:command_block{Command:"function pld:npcs/middle/chat43"} replace 
setblock 240 41 69 minecraft:command_block{Command:"function pld:npcs/middle/chat44"} replace 
setblock 237 40 58 minecraft:command_block{Command:"function pld:npcs/middle/chat45"} replace 


kill @e[type=villager,tag=!panling]
execute positioned 224 41 78 run function pld:npcs/middle/chat43
execute positioned 240 41 69 run function pld:npcs/middle/chat44
execute positioned 237 40 58 run function pld:npcs/middle/chat45
#区块卸载
forceload remove 232 59 243 66
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/14_8/pre 1t