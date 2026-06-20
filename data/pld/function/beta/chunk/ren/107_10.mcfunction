#区块强加载
forceload add 1733 141
#要做的事
setblock 1732 46 137 minecraft:command_block[custom_data={Command:"execute as @p[x=1732,y=47,z=137,distance=..3] run function pld:test/ren/incheck"}] replace 

#区块卸载
forceload remove 1733 141
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/108_9 1t