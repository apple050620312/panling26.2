#区块强加载
forceload add 2179 -904 2198 -906
#要做的事
setblock 2178 88 -906 minecraft:command_block[custom_data={Command:"tp @p[distance=..5] 2206 80 -909 0 -20"}] replace
setblock 2206 77 -911 minecraft:command_block[custom_data={Command:"tp @p[distance=..5] 2174 91 -906 130 0"}] replace
#区块卸载
forceload remove 2179 -904 2198 -906
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/143_-60 1t