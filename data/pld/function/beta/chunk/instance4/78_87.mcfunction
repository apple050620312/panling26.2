#区块强加载
forceload add 1261 1400
#要做的事
data merge block 1259 81 1399 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.instance4.2.text2"}','{"translate":"pl.sign.instance4.2.text3"}','{"text":""}']}}

setblock 1259 79 1401 minecraft:command_block{Command:"function pld:instances/instance4/hungry_mtgod"} replace

#区块卸载
forceload remove 1261 1400
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/instance4_end 1t