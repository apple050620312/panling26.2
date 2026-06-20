
#要做的事
setblock 1757 136 204 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/chat7"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 1757 136 204 run function pld:npcs/ren/chat7
#区块卸载
forceload remove 1757 202
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/110_8/pre 1t