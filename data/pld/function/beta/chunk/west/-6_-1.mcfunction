#区块强加载
forceload add -93 -11
#要做的事
data merge block -95 67 -13 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west3.text2"}','{"translate":"pl.sign.west3.text3"}','{"translate":""}']}}
data merge block -95 66 -15 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west4.text2"}','{"translate":"pl.sign.west4.text3"}','{"translate":""}']}}
data merge block -94 67 -14 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west5.text2"}','{"translate":"pl.sign.west5.text3"}','{"translate":""}']}}

#区块卸载
forceload remove -93 -11
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-6_-9 1t