#区块强加载
forceload add 401 8
#要做的事
data merge block 408 51 4 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east1.text2"}','{"text":""}','{"text":""}']}}
data merge block 408 51 10 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east1.text2"}','{"text":""}','{"text":""}']}}

#区块卸载
forceload remove 401 8
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/27_1 1t