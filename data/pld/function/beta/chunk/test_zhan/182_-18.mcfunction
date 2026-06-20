#区块强加载
forceload add 2916 -288
#要做的事
setblock 2916 46 -287 minecraft:command_block[block_entity_data={Command:"execute as @p[x=2916,y=48,z=-287,distance=..3] run function pld:test/zhan/power/out"}] replace 
setblock 2916 46 -288 air

#区块卸载
forceload remove 2916 -288
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/test_zhan_end 1t