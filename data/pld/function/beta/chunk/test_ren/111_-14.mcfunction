#区块强加载
forceload add 1780 -215
#要做的事

setblock 1776 17 -220 minecraft:command_block{Command:"execute as @p[x=1776,y=19,z=-220,distance=..3] run function pld:test/ren/water/out"} replace 
setblock 1778 17 -220 air

#区块卸载
forceload remove 1780 -215
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_ren/111_-20 1t