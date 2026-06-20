#区块强加载
forceload add -230 648
#要做的事
data merge block -230 49 648 {front_text:{messages:['{"translate":"pl.sign.south1.text1"}','{"translate":"pl.sign.south3.text2"}','{"translate":""}','{"translate":""}']}}
#区块卸载
forceload remove -230 648
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/south/-15_42 1t