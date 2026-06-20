#区块强加载
forceload add 269 -223 275 -223
#要做的事
data merge block 275 34 -223 {front_text:{messages:['{"translate":"pl.sign.middle50.text1"}','{"translate":"pl.sign.middle50.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 269 34 -223 {front_text:{messages:['{"translate":"pl.sign.middle50.text1"}','{"translate":"pl.sign.middle50.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 269 -223 275 -223
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/16_4 1t