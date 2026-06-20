
#要做的事
setblock 145 43 160 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat13"}] replace 
setblock 146 41 151 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat14"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 145 43 160 run function pld:npcs/middle/chat13
execute positioned 146 41 151 run function pld:npcs/middle/chat14
#区块卸载
forceload remove 148 156 147 163
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/10_-3/pre 1t