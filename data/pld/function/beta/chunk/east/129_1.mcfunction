#区块强加载
forceload add 2081 224 2077 24
#要做的事
data merge block 2083 60 24 {front_text:{messages:['{"text":"(18)"}','{"translate":"pl.sign.dragon.question18.text2"}','{"translate":"pl.sign.dragon.question18.text3"}','{"translate":"pl.sign.dragon.question18.text4"}']}}
data merge block 2087 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer18a.text3"}','{"text":""}']}}
data merge block 2085 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer18b.text3"}','{"text":""}']}}
data merge block 2081 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer18c.text3"}','{"text":""}']}}
data merge block 2079 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer18d.text3"}','{"text":""}']}}


setblock 2083 57 25 minecraft:command_block[custom_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2081 224 2077 24
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/129_2 1t