#要做的事
setblock 123 43 119 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat26"}] replace
setblock 135 42 120 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat27"}] replace

kill @e[type=villager,tag=!panling]
execute positioned 123 43 119 run function pld:npcs/middle/chat26
execute positioned 135 42 120 run function pld:npcs/middle/chat27
#区块卸载
forceload remove 119 113 136 114
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/7_9/pre 1t