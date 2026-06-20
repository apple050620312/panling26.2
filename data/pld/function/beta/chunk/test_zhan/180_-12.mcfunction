#区块强加载
forceload add 2884 -184
#要做的事
setblock 2891 22 -184 minecraft:command_block[custom_data={Command:"execute as @p[x=2891,y=25,z=-184,distance=..3] run function pld:test/zhan/body/in"}] replace 
#区块卸载
forceload remove 2884 -184
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/180_-14 1t