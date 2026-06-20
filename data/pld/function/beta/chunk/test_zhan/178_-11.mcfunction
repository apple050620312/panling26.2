#区块强加载
forceload add 2852 -165
#要做的事
setblock 2852 13 -161 minecraft:command_block[custom_data={Command:"execute as @p[x=2852,y=16,z=-161,distance=..3] run function pld:test/zhan/speed/out"}] replace 
#区块卸载
forceload remove 2852 -165
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/178_-12 1t