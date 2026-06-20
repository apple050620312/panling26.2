#区块强加载
forceload add 1748 163
#要做的事
data merge block 1750 160 162 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren17.text4"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 1748 163
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/ren_end 1t