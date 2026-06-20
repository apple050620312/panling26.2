#区块强加载
forceload add -580 -235
#要做的事
setblock -581 160 -238 minecraft:command_block[custom_data={Command:"execute as @p[x=-581,y=162,z=-238,distance=..3] run function pld:system/altars/tiger/intotiger"}] replace
#区块卸载
forceload remove -580 -235
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-37_7 1t