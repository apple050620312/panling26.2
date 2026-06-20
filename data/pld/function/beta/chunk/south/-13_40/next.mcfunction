
#要做的事
setblock -202 43 654 minecraft:command_block[block_entity_data={Command:"function pld:npcs/south/chat3"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -202 43 654 run function pld:npcs/south/chat3
#区块卸载
forceload remove -202 655
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-16_44/pre 1t