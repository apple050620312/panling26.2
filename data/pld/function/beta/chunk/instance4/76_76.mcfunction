#区块强加载
forceload add 1216 1217 1215 1217
#要做的事
fill 1215 63 1216 1217 63 1216 minecraft:command_block[custom_data={Command:"/tp @p[distance=..3] 939 137 1355"}] replace
#区块卸载
forceload remove 1216 1217 1215 1217
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/78_81 1t