#区块强加载
forceload add 3289 921
#要做的事
data merge block 3291 78 921 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian6.text1"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 3289 921
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/206_51 1t