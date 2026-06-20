#区块强加载
forceload add 2121 23 
#要做的事
data merge block 2121 60 24 {front_text:{messages:['{"text":"(16)"}','{"translate":"pl.sign.dragon.question16.text2"}','{"translate":"pl.sign.dragon.question16.text3"}','{"text":""}']}}
data merge block 2125 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer16a.text3"}','{"text":""}']}}
data merge block 2123 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer16b.text3"}','{"text":""}']}}
data merge block 2119 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer16c.text3"}','{"text":""}']}}
data merge block 2117 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer16d.text3"}','{"text":""}']}}

setblock 2121 57 25 minecraft:command_block{Command:"tp @a[distance=..10] 2083 60 2"} replace 
#区块卸载
forceload remove 2121 23 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/132_3 1t