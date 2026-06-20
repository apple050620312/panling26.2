
#要做的事
setblock 411 39 -665 minecraft:command_block[block_entity_data={Command:"function pld:npcs/penglai/chat2"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 411 39 -665 run function pld:npcs/penglai/chat2
#区块卸载
forceload remove 410 -664
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/25_-42/pre 1t