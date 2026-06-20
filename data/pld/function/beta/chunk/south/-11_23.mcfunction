#区块强加载
forceload add -174 376
#要做的事
data merge block -174 78 376 {front_text:{messages:['{"translate":"pl.sign.south1.text1"}','{"translate":"pl.sign.south2.text2"}','{"translate":""}','{"translate":""}']}}
#区块卸载
forceload remove -174 376
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-11_30 1t