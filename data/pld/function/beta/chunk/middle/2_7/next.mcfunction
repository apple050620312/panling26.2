#要做的事
setblock 38 41 115 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat49"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 38 41 115 run function pld:npcs/middle/chat49
#区块卸载
forceload remove 41 118
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/2_9/pre 1t