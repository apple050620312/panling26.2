#区块强加载
forceload add 2871 318
#要做的事
setblock 2874 22 317 minecraft:command_block{Command:"execute as @p[x=2874,y=25,z=317,distance=..3] run function pld:test/shen/mountain/in"} replace 

#区块卸载
forceload remove 2871 318
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_shen/179_21 1t