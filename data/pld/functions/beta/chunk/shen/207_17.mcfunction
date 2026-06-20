#区块强加载
forceload add 3325 273
#要做的事
data merge block 3325 124 273 {front_text:{messages:['{"translate":"pl.sign.shen18.text1"}','{"translate":"pl.sign.shen18.text2"}','{"translate":""}','{"translate":"pl.sign.shen18.text4"}']}}

#区块卸载
forceload remove 3325 273
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/208_18 1t