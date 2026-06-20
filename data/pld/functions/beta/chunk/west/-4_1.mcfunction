#区块强加载
forceload add -51 26
#要做的事
data merge block -53 66 30 {front_text:{messages:['{"translate":"pl.sign.south1.text1"}','{"translate":"pl.sign.west2.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -53 65 30 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west1.text2"}','{"translate":"pl.sign.west1.text3"}','{"translate":""}']}}

#区块卸载
forceload remove -51 26
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-6_-1 1t