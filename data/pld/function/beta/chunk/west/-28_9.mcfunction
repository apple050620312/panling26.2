#区块强加载
forceload add -434 156
#要做的事
data merge block -435 112 158 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west10.text2"}','{"translate":"pl.sign.west10.text3"}','{"translate":""}']}}
data merge block -435 112 155 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west10.text2"}','{"translate":"pl.sign.west10.text3"}','{"translate":""}']}}

#区块卸载
forceload remove -434 156
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-29_10 1t