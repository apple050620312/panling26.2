
#要做的事
setblock 3299 15 -113 minecraft:command_block[block_entity_data={Command:"function pld:npcs/zhan/chat4"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 3299 15 -113 run function pld:npcs/zhan/chat4
#区块卸载
forceload remove 3301 -114
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/206_-11/pre 1t