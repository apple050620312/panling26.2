#区块强加载
forceload add 3273 -798
#要做的事
setblock 3273 150 -800 minecraft:command_block[custom_data={Command:"execute as @p[x=3273,y=151,z=-800,distance=..3] run function pld:system/altars/bird/intobirdtest"}] replace 
#区块卸载
forceload remove 3273 -798
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/south_end 1t