#区块强加载
forceload add 76 -74 82 -75
#要做的事
data merge block 77 45 -78 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle24.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 76 -74 82 -75
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_10 1t