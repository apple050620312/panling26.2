#区块强加载
forceload add 2887 330 2886 341
#要做的事
setblock 2888 22 323 minecraft:command_block{Command:"execute as @p[x=2888,y=25,z=323,distance=..3] run function pld:test/shen/sun/in"} replace 
setblock 2894 22 337 minecraft:command_block{Command:"execute as @p[x=2894,y=25,z=337,distance=..3] run function pld:test/shen/forest/in"} replace 
setblock 2888 22 351 minecraft:command_block{Command:"execute as @p[x=2888,y=25,z=351,distance=..3] run function pld:test/shen/star/in"} replace 

#区块卸载
forceload remove 2887 330 2886 341
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_shen/180_23 1t