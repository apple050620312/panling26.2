#区块强加载
forceload add 2136 27 2145 25
#要做的事
data merge block 2140 60 24 {front_text:{messages:['{"text":"(15)"}','{"translate":"pl.sign.dragon.question15.text2"}','{"translate":"pl.sign.dragon.question15.text3"}','{"translate":"pl.sign.dragon.question15.text4"}']}}
data merge block 2144 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer15a.text3"}','{"text":""}']}}
data merge block 2142 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer15b.text3"}','{"text":""}']}}
data merge block 2138 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer15c.text3"}','{"text":""}']}}
data merge block 2136 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer15d.text3"}','{"text":""}']}}
setblock 2140 57 25 minecraft:command_block[custom_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace

#区块卸载
forceload remove 2136 27 2145 25
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/134_0 1t