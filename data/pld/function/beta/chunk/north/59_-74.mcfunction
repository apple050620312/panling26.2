#区块强加载
forceload add 947 -1174
#要做的事
data merge block 948 144 -1173 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.north9.text2"}','{"translate":"pl.sign.north9.text3"}','{"translate":""}']}}

#区块卸载
forceload remove 947 -1174
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/north/59_-77 1t