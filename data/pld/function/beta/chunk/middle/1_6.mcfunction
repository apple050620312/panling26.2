#区块强加载
forceload add 21 110
#要做的事
data merge block 21 48 110 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle64.text2"}','{"translate":"pl.sign.middle64.text3"}','{"translate":""}']}}


#区块卸载
forceload remove 21 110
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_-5 1t