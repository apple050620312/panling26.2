#区块强加载
forceload add 2140 5 2145 5
#要做的事
data merge block 2140 60 6 {front_text:{messages:['{"text":""}','{"text":"(3)"}','{"translate":"pl.sign.dragon.question3.text3"}','{"text":""}']}}
data merge block 2144 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer3a.text3"}','{"text":""}']}}
data merge block 2142 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer3b.text3"}','{"text":""}']}}
data merge block 2138 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer3c.text3"}','{"text":""}']}}
data merge block 2136 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer3d.text3"}','{"text":""}']}}
setblock 2140 57 7 minecraft:command_block{Command:"tp @a[distance=..10] 2083 60 2"} replace 
#区块卸载
forceload remove 2140 5 2145 5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/133_1 1t