#区块强加载 102 6
forceload add 1638 109
#要做的事
#102 6
data merge block 1638 137 109 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren18.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 1638 109
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/107_10 1t