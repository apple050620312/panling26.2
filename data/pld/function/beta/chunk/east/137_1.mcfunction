#区块强加载
forceload add 2197 22
#要做的事
data merge block 2197 60 24 {front_text:{messages:['{"text":"(12)"}','{"translate":"pl.sign.dragon.question12.text2"}','{"translate":"pl.sign.dragon.question12.text3"}','{"text":""}']}}
data merge block 2201 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer12a.text3"}','{"text":""}']}}
data merge block 2199 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer12b.text3"}','{"text":""}']}}
data merge block 2195 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer12c.text3"}','{"text":""}']}}
data merge block 2193 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer12d.text3"}','{"text":""}']}}
setblock 2197 57 25 minecraft:command_block[custom_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2197 22
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/138_0 1t