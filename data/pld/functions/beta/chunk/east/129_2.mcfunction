#区块强加载
forceload add 2078 41 2081 41
#要做的事

data merge block 2083 60 42 {front_text:{messages:['{"text":"(19)"}','{"translate":"pl.sign.dragon.question19.text2"}','{"translate":"pl.sign.dragon.question19.text3"}','{"translate":""}']}}
data merge block 2087 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer19a.text3"}','{"text":""}']}}
data merge block 2085 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer19b.text3"}','{"text":""}']}}
data merge block 2081 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer19c.text3"}','{"text":""}']}}
data merge block 2079 61 47 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer19d.text3"}','{"text":""}']}}

setblock 2083 57 43 minecraft:command_block{Command:"tp @a[distance=..10] 2083 60 2"} replace 
#区块卸载
forceload remove 2078 41 2081 41
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/130_0 1t