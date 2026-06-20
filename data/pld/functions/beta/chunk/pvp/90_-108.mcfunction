#区块强加载
forceload add 1445 -1725

#要做的事
fill 1445 126 -1724 1445 125 -1725 air
setblock 1445 124 -1725 minecraft:grass_block replace
#区块卸载
forceload remove 1445 -1725


forceload add 1396 -1772
fill 1396 108 -1772 1397 107 -1772 air
setblock 1396 107 -1772 minecraft:grass_block replace
forceload remove 1396 -1772

forceload add 1322 -1875
fill 1322 106 -1875 1321 105 -1875 air
setblock 1322 105 -1875 minecraft:netherrack replace
forceload remove 1322 -1875


#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/90_-114 1t