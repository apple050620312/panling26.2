#区块强加载
forceload add 254 -239
#要做的事
data merge block 254 37 -239 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle36.text2"}','{"translate":""}','{"translate":""}']}}



#区块卸载
forceload remove 254 -239
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/16_-1 1t