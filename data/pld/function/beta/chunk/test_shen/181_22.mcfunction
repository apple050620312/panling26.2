#区块强加载
forceload add 2938 394 2907 362
#要做的事
setblock 2914 11 374 minecraft:command_block[custom_data={Command:"execute as @p[x=2914,y=13,z=374,distance=..3] run function pld:test/shen/star/out"}] replace 

#区块卸载
forceload remove 2938 394 2907 362
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_shen/test_shen_end 1t