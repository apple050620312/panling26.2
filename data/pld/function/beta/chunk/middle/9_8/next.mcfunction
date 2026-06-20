
#要做的事
setblock 158 42 104 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat29"}] replace 
setblock 151 42 94 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat30"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 158 42 104 run function pld:npcs/middle/chat29
execute positioned 151 42 94 run function pld:npcs/middle/chat30
#区块卸载
forceload remove 149 93 153 101
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/9_9/pre 1t