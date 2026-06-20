#区块强加载
forceload add -356 111
#要做的事
data merge block -358 108 111 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.west1.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.west1.reads\\",\\"color\\":\\"gray\\"}"}}','{"translate":""}','{"translate":"pl.spsign.west1.text4"}']}}

#区块卸载
forceload remove -356 111
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-27_9 1t