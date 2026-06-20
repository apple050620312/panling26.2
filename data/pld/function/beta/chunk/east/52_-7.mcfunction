#区块强加载
forceload add 844 -106
#要做的事
data merge block 844 61 -101 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east7.text2"}','{"text":""}','{"text":""}']}}

#区块卸载
forceload remove 844 -106
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/52_-8 1t