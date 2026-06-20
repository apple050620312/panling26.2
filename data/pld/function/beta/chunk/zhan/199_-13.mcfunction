#区块强加载
forceload add 3194 -194
#要做的事
data merge block 3194 36 -194 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.zhan2.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.zhan2.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}']}}


#区块卸载
forceload remove 3194 -194
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/203_-12 1t