#区块强加载
forceload add 2885 -170 2871 -164
#要做的事
setblock 2885 22 -170 minecraft:command_block{Command:"execute as @p[x=2885,y=25,z=-170,distance=..3] run function pld:test/zhan/skill/in"} replace 
setblock 2871 22 -164 minecraft:command_block{Command:"execute as @p[x=2871,y=25,z=-164,distance=..3] run function pld:test/zhan/speed/in"} replace 
#区块卸载
forceload remove 2885 -170 2871 -164
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/180_-12 1t