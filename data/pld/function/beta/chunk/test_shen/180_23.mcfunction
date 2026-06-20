#区块强加载
forceload add 2886 376 2837 405
#要做的事
setblock 2871 1 401 minecraft:command_block[custom_data={Command:"execute as @p[x=2871,y=3,z=401,distance=..3] run function pld:test/shen/sea/out"}] replace 

#区块卸载
forceload remove 2886 376 2837 405
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_shen/181_21 1t