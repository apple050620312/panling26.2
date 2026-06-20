#区块强加载
forceload add 1741 154
#要做的事

data merge block 1742 156 152 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren21.text2"}','{"translate":"pl.sign.ren21.text3"}','{"translate":""}']}}

#区块卸载
forceload remove 1741 154
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/109_10 1t