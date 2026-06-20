#区块强加载
forceload add 566 325
#要做的事
data merge block 567 46 326 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east6.text2"}','{"text":""}','{"text":""}']}}

#区块卸载
forceload remove 566 325
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/36_11 1t