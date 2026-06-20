
#要做的事
setblock -329 57 588 minecraft:command_block[block_entity_data={Command:"function pld:system/spawnpoint/spawnpointset"}] replace 
setblock -326 53 584 minecraft:command_block[block_entity_data={Command:"function pld:npcs/south/foodsouth"}] replace 
setblock -321 53 595 minecraft:command_block[block_entity_data={Command:"function pld:npcs/south/chat1"}] replace 
setblock -329 53 600 minecraft:command_block[block_entity_data={Command:"function pld:npcs/south/chat2"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned -326 53 584 run function pld:npcs/south/foodsouth
execute positioned -321 53 595 run function pld:npcs/south/chat1
execute positioned -329 53 600 run function pld:npcs/south/chat2
#区块卸载
forceload remove -327 587 -325 596
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-29_22/pre 1t