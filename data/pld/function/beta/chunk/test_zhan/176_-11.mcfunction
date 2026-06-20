#区块强加载
forceload add 2831 -160
#要做的事
setblock 2831 10 -160 minecraft:command_block{Command:"function pld:test/zhan/speed/summon"} replace 
#区块卸载
forceload remove 2831 -160
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/178_-11 1t