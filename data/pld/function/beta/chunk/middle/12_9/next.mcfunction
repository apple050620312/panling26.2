#要做的事
setblock 202 41 156 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat36"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 202 41 156 run function pld:npcs/middle/chat36
setblock 196 44 174 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 1351 38 537 -180 0"}] replace 

#区块卸载
forceload remove 203 153 196 174
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/14_-10/pre 1t