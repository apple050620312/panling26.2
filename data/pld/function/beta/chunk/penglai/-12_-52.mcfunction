#区块强加载
forceload add -185 -828
#要做的事
data merge block -184 100 -832 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai14.text2"}','{"translate":"pl.sign.penglai14.text3"}','{"translate":"pl.sign.penglai14.text4"}']}}
setblock -184 98 -831 minecraft:command_block[custom_data={Command:"function pld:instances/instance5/check"}] replace 

#区块卸载
forceload remove -185 -828
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/-18_-44 1t