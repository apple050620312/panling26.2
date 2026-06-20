#要做的事
setblock 270 39 132 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat38"}] replace 
setblock 284 39 141 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat39"}] replace 
setblock 295 39 130 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat40"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 270 39 132 run function pld:npcs/middle/chat38
execute positioned 284 39 141 run function pld:npcs/middle/chat39
execute positioned 295 39 130 run function pld:npcs/middle/chat40
#区块卸载
forceload remove 264 136 294 134
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/17_3/pre 1t