#区块强加载
forceload add 3332 295
#要做的事
data merge block 3332 116 297 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen14.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 3332 295
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/210_11 1t