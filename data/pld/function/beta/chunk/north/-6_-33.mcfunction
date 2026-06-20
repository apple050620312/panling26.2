#区块强加载
forceload add -83 -518
#要做的事
setblock -84 32 -520 minecraft:command_block[custom_data={Command:"execute as @p[x=-84,y=34,z=-520,distance=..3] run function pld:system/altars/turtle/intoturtle_altar"}] replace 
setblock -84 33 -518 minecraft:command_block[custom_data={Command:"tp @p[distance=..3] -84 35 -522"}] replace 
data merge block -88 36 -525 {front_text:{messages:['{"translate":"pl.sign.north4.text3"}','{"translate":"pl.sign.north14.text2"}','{"translate":""}','{"translate":"pl.sign.north13.text4"}']}}
#区块卸载
forceload remove -83 -518
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/-6_-35 1t