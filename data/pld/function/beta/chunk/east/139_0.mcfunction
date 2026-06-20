#区块强加载
forceload add 2235 6
#要做的事
data merge block 2235 60 6 {front_text:{messages:['{"text":""}','{"text":"(9)"}','{"translate":"pl.sign.dragon.question9.text3"}','{"text":""}']}}
data merge block 2239 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer9a.text3"}','{"text":""}']}}
data merge block 2237 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer9b.text3"}','{"text":""}']}}
data merge block 2233 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer9c.text3"}','{"text":""}']}}
data merge block 2231 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer9d.text3"}','{"text":""}']}}
setblock 2235 57 7 minecraft:command_block[custom_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2235 6
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/139_1 1t