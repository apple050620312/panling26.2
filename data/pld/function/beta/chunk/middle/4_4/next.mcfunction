#要做的事
setblock 71 43 79 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat50"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 71 43 79 run function pld:npcs/middle/chat50
#区块卸载
forceload remove 69 75
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_6/pre 1t