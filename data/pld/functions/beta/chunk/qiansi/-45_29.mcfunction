#区块强加载
forceload add -710 466
#要做的事
data merge block -713 148 467 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi5.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove -710 466
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/-46_23 1t