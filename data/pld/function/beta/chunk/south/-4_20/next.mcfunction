
#要做的事
setblock -51 46 325 minecraft:command_block[block_entity_data={Command:"function pld:npcs/south/ze1"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned -51 46 325 run function pld:npcs/south/ze1
#区块卸载
forceload remove -52 325
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-4_51/pre 1t