#区块强加载
forceload add 280 -148
#要做的事
data merge block 280 57 -148 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle65.text2"}','{"translate":"pl.sign.middle65.text3"}','{"translate":""}']}}


#区块卸载
forceload remove 280 -148
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/17_-17 1t