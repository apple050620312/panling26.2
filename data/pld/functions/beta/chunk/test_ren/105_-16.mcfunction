#区块强加载
forceload add 1685 -252 1700 -217
#要做的事

setblock 1685 22 -252 minecraft:command_block{Command:"execute as @p[x=1685,y=25,z=-252,distance=..3] run function pld:test/ren/metal/in"} replace
setblock 1699 22 -247 minecraft:command_block{Command:"execute as @p[x=1699,y=25,z=-246,distance=..3] run function pld:test/ren/wood/in"} replace
setblock 1705 22 -232 minecraft:command_block{Command:"execute as @p[x=1705,y=25,z=-232,distance=..3] run function pld:test/ren/water/in"} replace
setblock 1698 22 -219 minecraft:command_block{Command:"execute as @p[x=1699,y=25,z=-218,distance=..3] run function pld:test/ren/fire/in"} replace
setblock 1685 22 -212 minecraft:command_block{Command:"execute as @p[x=1685,y=25,z=-212,distance=..3] run function pld:test/ren/earth/in"} replace

setblock 1684 11 -233 minecraft:command_block{Command:"function pld:test/ren/reward"} replace 

#区块卸载
forceload remove 1685 -252 1700 -217
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/105_-19 1t