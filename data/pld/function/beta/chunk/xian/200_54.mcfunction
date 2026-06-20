#区块强加载
forceload add 3201 804
#要做的事
data merge block 3202 87 804 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian5.text1"}','{"translate":""}','{"translate":""}']}}

#区块卸载
forceload remove 3201 804
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/202_65 1t