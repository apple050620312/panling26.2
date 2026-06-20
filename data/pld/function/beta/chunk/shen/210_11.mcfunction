#区块强加载
forceload add 3366 176
#要做的事
data merge block 3365 147 176 {front_text:{messages:['{"translate":"pl.sign.shen21.text2"}','{"translate":"pl.sign.shen15.text3"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 3366 176
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/shen_end 1t