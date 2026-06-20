#区块强加载
forceload add 948 -1218
#要做的事
data merge block 949 37 -1218 {front_text:{messages:['{"translate":"pl.sign.north7.text1"}','{"translate":""}','{"translate":""}','{"translate":""}']}}
data merge block 947 37 -1218 {front_text:{messages:['{"translate":"pl.sign.north8.text1"}','{"translate":""}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 948 -1218
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/136_59 1t