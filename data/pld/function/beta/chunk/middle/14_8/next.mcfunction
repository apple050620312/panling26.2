
#要做的事
setblock 237 42 136 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat37"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 237 42 136 run function pld:npcs/middle/chat37
#区块卸载
forceload remove 237 136
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/14_11/pre 1t