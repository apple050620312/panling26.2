forceload add 2870 346 2872 355

#要做的事
setblock 2874 22 357 minecraft:command_block[block_entity_data={Command:"execute as @p[x=2874,y=25,z=357,distance=..3] run function pld:test/shen/sea/in"}] replace 
setblock 2868 24 337 minecraft:command_block[block_entity_data={Command:"execute as @p[x=2869,y=25,z=337,distance=..3] run function pld:test/shen/finish"}] replace 

#区块卸载
forceload remove 2870 346 2872 355
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_shen/180_17 1t