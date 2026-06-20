#区块强加载
forceload add 280 -268
#要做的事
data merge block 280 41 -268 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle66.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 280 -268
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/82_33 1t