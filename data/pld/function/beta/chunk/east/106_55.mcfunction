#区块强加载
forceload add 1697 887 
#要做的事
setblock 1696 100 885 minecraft:command_block[custom_data={Command:"execute as @p[distance=..10] run function pld:system/altars/dragon/outdragon"}] replace 
#区块卸载
forceload remove 1697 887 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/129_1 1t