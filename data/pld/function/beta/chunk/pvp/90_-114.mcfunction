#区块强加载
forceload add 1454 -1814
forceload add 1314 -1831
#要做的事
setblock 1318 98 -1831 air
setblock 1317 99 -1831 air
setblock 1453 103 -1819 air
data merge block 1454 109 -1814 {front_text:{messages:['{"translate":"pl.sign.pvp1_water_cannon.text1"}','{"translate":"pl.sign.pvp1_water_cannon.text2"}','{"translate":"pl.sign.pvp1_water_cannon.text3"}','{"translate":"pl.sign.pvp1_water_cannon.text4"}']}}
data merge block 1455 109 -1819 {front_text:{messages:['{"translate":"pl.sign.pvp1_water_cannon.text1"}','{"translate":"pl.sign.pvp1_water_cannon.text2"}','{"translate":"pl.sign.pvp1_water_cannon.text3"}','{"translate":"pl.sign.pvp1_water_cannon.text4"}']}}
data merge block 1454 108 -1824 {front_text:{messages:['{"translate":"pl.sign.pvp1_water_cannon.text1"}','{"translate":"pl.sign.pvp1_water_cannon.text2"}','{"translate":"pl.sign.pvp1_water_cannon.text3"}','{"translate":"pl.sign.pvp1_water_cannon.text4"}']}}

data merge block 1314 104 -1831 {front_text:{messages:['{"translate":"pl.sign.pvp1_water_cannon.text1"}','{"translate":"pl.sign.pvp1_water_cannon.text2"}','{"translate":"pl.sign.pvp1_water_cannon.text3"}','{"translate":"pl.sign.pvp1_water_cannon.text4"}']}}
data merge block 1317 104 -1836 {front_text:{messages:['{"translate":"pl.sign.pvp1_water_cannon.text1"}','{"translate":"pl.sign.pvp1_water_cannon.text2"}','{"translate":"pl.sign.pvp1_water_cannon.text3"}','{"translate":"pl.sign.pvp1_water_cannon.text4"}']}}
data merge block 1317 104 -1826 {front_text:{messages:['{"translate":"pl.sign.pvp1_water_cannon.text1"}','{"translate":"pl.sign.pvp1_water_cannon.text2"}','{"translate":"pl.sign.pvp1_water_cannon.text3"}','{"translate":"pl.sign.pvp1_water_cannon.text4"}']}}


#区块卸载
forceload remove 1454 -1814
forceload remove 1314 -1831
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/pvp/115_-117 1t