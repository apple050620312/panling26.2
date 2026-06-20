
#要做的事
setblock 3270 97 260 minecraft:command_block[block_entity_data={Command:"execute as @p[x=3270,y=99,z=260,distance=..3] run function pld:test/shen/incheck"}] replace 
setblock 3266 95 260 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 
setblock 3271 95 265 minecraft:command_block[block_entity_data={Command:"function pld:npcs/shen/guard"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3266 95 260 run function pld:npcs/shen/guard
execute positioned 3271 95 265 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3268 264
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/205_8/pre 1t