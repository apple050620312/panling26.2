
#要做的事
setblock 172 42 126 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat32"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 172 42 126 run function pld:npcs/middle/chat32
#区块卸载
forceload remove 171 125
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/10_9/pre 1t