#区块强加载
forceload add 3262 -182
#要做的事
data merge block 3262 35 -182 {front_text:{messages:['{"translate":"pl.sign.zhan14.text1"}','{"translate":"pl.sign.zhan14.text2"}','{"translate":""}','{"translate":"pl.sign.zhan14.text4"}']}}
data merge block 3263 35 -183 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan15.text2"}','{"translate":"pl.sign.zhan15.text3"}','{"translate":""}']}}

#区块卸载
forceload remove 3262 -182
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/205_-8 1t