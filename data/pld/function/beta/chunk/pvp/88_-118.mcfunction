#区块强加载
forceload add 1420 -1874

fill 1420 108 -1875 1420 107 -1873 air
setblock 1420 109 -1874 minecraft:command_block[custom_data={Command:"function pld:pvp/1/ing/def/delivered"}] replace 

#区块卸载
forceload remove 1420 -1874
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/90_-108 1t