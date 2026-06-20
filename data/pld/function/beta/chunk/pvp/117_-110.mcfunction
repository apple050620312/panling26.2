#区块强加载
forceload add 1876 -1750 1865 -1749
#要做的事
setblock 1881 103 -1748 minecraft:command_block[custom_data={Command:"tp @a[distance=..3] ~-22 ~2 ~"}] replace
setblock 1862 103 -1748 minecraft:command_block[custom_data={Command:"tp @a[distance=..3] ~22 ~2 ~"}] replace
setblock 1865 106 -1749 minecraft:command_block[custom_data={Command:"tp @a[distance=..3] 1860 106 -1748"}] replace
setblock 1879 106 -1749 minecraft:command_block[custom_data={Command:"tp @a[distance=..3] 1883 106 -1748"}] replace

#区块卸载
forceload remove 1876 -1750 1865 -1749

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/118_-117 1t