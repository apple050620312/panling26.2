#区块强加载
forceload add -29 151
#要做的事
setblock -30 24 150 minecraft:command_block[custom_data={Command:"execute as @p[x=-30,y=26,z=150,distance=..5] run function pld:system/race_tp/race3"}] replace 
#区块卸载
forceload remove -29 151
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-4_1 1t