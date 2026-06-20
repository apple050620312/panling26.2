#要做的事
data merge block 86 48 85 {front_text:{messages:['{"translate":"pl.sign.middle67.text1"}','{"translate":""}','{"translate":""}','{"translate":""}']}}
data merge block 90 48 85 {front_text:{messages:['{"translate":"pl.sign.middle68.text1"}','{"translate":"pl.sign.middle68.text2"}','{"translate":"pl.sign.middle68.text3"}','{"translate":""}']}}

kill @e[type=villager,tag=!panling]
#区块卸载
forceload remove 86 85
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/6_6/pre 1t