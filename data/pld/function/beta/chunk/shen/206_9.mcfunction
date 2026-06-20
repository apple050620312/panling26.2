#区块强加载
forceload add 3301 154 3298 170
#要做的事
data merge block 3300 155 154 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen13.text3"}','{"translate":""}','{"translate":""}']}}
data merge block 3298 147 175 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen14.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 3301 154 3298 170
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/207_17 1t