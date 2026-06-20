#区块强加载
forceload add 195 38
#要做的事
data merge block 196 46 38 {front_text:{messages:['{"translate":"pl.sign.middle4.text1"}','{"translate":"pl.sign.middle4.text2"}','{"translate":"pl.sign.middle4.text3"}','{"translate":"pl.sign.middle4.text4"}']}}


#区块卸载
forceload remove 195 38
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/13_-8 1t