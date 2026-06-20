#要做的事
setblock 123 42 155 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat15"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 123 42 155 run function pld:npcs/middle/chat15
#区块卸载
forceload remove 122 156
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/8_10/pre 1t