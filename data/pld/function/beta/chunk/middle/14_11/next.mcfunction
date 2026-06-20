
#要做的事
setblock 232 42 181 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat72"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 232 42 181 run function pld:npcs/middle/chat72
#区块卸载
forceload remove 232 181
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/15_1/pre 1t