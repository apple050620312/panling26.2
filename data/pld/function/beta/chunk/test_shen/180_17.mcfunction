#区块强加载
forceload add 2883 275
#要做的事
setblock 2883 31 275 minecraft:command_block{Command:"execute as @p[x=2883,y=33,z=275,distance=..3] run function pld:test/shen/mountain/out"} replace 

#区块卸载
forceload remove 2883 275
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_shen/180_19 1t