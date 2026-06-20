
#要做的事
setblock 3303 15 -162 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/chat7"}] replace 
setblock 3301 15 -163 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/chat8"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 3303 15 -162 run function pld:npcs/zhan/chat7
execute positioned 3301 15 -163 run function pld:npcs/zhan/chat8
#区块卸载
forceload remove 3302 -163
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/206_-14/pre 1t