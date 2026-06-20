#区块强加载
forceload add 2876 -205 2887 -200
#要做的事
setblock 2871 22 -204 minecraft:command_block{Command:"execute as @p[x=2871,y=25,z=-204,distance=..3] run function pld:test/zhan/heart/in"} replace 
setblock 2885 22 -199 minecraft:command_block{Command:"execute as @p[x=2885,y=25,z=-198,distance=..3] run function pld:test/zhan/power/in"} replace 
#区块卸载
forceload remove 2876 -205 2887 -200
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/180_-11 1t