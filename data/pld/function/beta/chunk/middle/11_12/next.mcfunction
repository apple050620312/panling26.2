#要做的事
setblock 183 42 193 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/tong13b"}] replace 
setblock 182 42 201 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat01"}] replace 
setblock 176 42 201 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat02"}] replace 


kill @e[type=villager,tag=!panling]
execute positioned 183 42 193 run function pld:npcs/middle/tong13b
execute positioned 182 42 201 run function pld:npcs/middle/chat01
execute positioned 176 42 201 run function pld:npcs/middle/chat02
#区块卸载
forceload remove 181 195
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/12_9/pre 1t