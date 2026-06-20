#区块强加载
forceload add 1182 1332
#要做的事
setblock 1183 72 1330 minecraft:command_block[custom_data={Command:"tp @p[distance=..3] 1010 86 1441"}] replace

#区块卸载
forceload remove 1182 1332
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/75_88 1t