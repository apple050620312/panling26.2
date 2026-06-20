#区块强加载
forceload add 2099 45
#要做的事
data merge block 2102 60 42 {front_text:{messages:['{"text":"(20)"}','{"translate":"pl.sign.dragon.question20.text2"}','{"translate":"pl.sign.dragon.question20.text3"}','{"text":""}']}}
data merge block 2106 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer20a.text3"}','{"text":""}']}}
data merge block 2104 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer20b.text3"}','{"text":""}']}}
data merge block 2100 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer20c.text3"}','{"text":""}']}}
data merge block 2098 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer20d.text3"}','{"text":""}']}}

setblock 2102 57 43 minecraft:command_block{Command:"tp @a[distance=..10] 2083 60 2"} replace 
#区块卸载
forceload remove 2099 45
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/132_0 1t