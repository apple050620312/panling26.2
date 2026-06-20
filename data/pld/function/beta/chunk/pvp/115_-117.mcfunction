#区块强加载
forceload add 1854 -1870
#要做的事
setblock 1855 103 -1868 minecraft:command_block{Command:"tp @a[distance=..3] ~35 ~2 ~"} replace
setblock 1854 113 -1870 minecraft:command_block{Command:"tp @a[distance=..2] 1853 106 -1868"} replace

#区块卸载
forceload remove 1854 -1870

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/116_-111 1t