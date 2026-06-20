#区块强加载
forceload add 1274 102
#要做的事
setblock 1277 75 105 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1277,y=77,z=105,distance=..2] run function pld:selections/race/select2"}] replace 
#区块卸载
forceload remove 1274 102 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/80_2 1t
