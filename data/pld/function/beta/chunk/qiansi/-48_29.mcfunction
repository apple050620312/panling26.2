#区块强加载
forceload add -766 472 -760 483
#要做的事
data merge block -768 103 469 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi5.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -758 103 494 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.qiansi6.text2"}','{"translate":""}','{"translate":""}']}}


#区块卸载
forceload remove -766 472 -760 483
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/qiansi/qiansi_end 1t