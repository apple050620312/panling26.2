
#要做的事
setblock 3285 15 -163 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/chat9"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 3285 15 -163 run function pld:npcs/zhan/chat9
#区块卸载
forceload remove 3284 -162
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/205_-17/pre 1t