#区块强加载
forceload add 222 -118 226 -138
#要做的事
data merge block 227 49 -119 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle9.text2"}','{"translate":"pl.sign.middle9.text3"}','{"translate":""}']}}
data merge block 220 49 -119 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle9.text2"}','{"translate":"pl.sign.middle9.text3"}','{"translate":""}']}}

setblock 229 49 -141 stone_bricks

#区块卸载
forceload remove 222 -118 226 -138
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/14_-11 1t