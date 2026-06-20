#要做的事
data merge block 278 45 56 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle43.text2"}','{"translate":""}','{"translate":""}']}}

kill @e[type=villager,tag=!panling]
#区块卸载
forceload remove 279 57
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/17_6/pre 1t