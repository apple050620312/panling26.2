#要做的事
setblock 70 42 -8 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat54"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 70 42 -8 run function pld:npcs/middle/chat54
#区块卸载
forceload remove 70 -8
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_-7/pre 1t