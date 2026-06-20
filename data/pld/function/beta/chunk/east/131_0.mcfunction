#区块强加载
forceload add 2102 5
#要做的事
data merge block 2102 60 6 {front_text:{messages:['{"text":"(1)"}','{"translate":"pl.sign.dragon.question1.text2"}','{"translate":"pl.sign.dragon.question1.text3"}','{"text":""}']}}
data merge block 2106 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer1a.text3"}','{"text":""}']}}
data merge block 2104 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer1b.text3"}','{"text":""}']}}
data merge block 2100 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer1c.text3"}','{"text":""}']}}
data merge block 2098 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer1d.text3"}','{"text":""}']}}


setblock 2102 57 7 minecraft:command_block[custom_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2102 5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/131_1 1t