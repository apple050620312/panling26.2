#区块强加载
forceload add 27 813
#要做的事
data merge block 30 50 814 {front_text:{messages:['{"translate":"pl.sign.south1.text1"}','{"translate":"pl.sign.south4.text2"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 27 813
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/4_49 1t