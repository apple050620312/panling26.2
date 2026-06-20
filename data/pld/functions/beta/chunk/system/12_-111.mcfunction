#区块强加载
forceload add 205 -1773
#要做的事
data merge block 205 55 -1769 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.relife1.text2"}','{"translate":"pl.sign.relife1.text3"}','{"translate":""}']}}

#区块卸载
forceload remove 205 -1773
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/12_-112 1t