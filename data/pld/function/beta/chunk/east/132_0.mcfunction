#区块强加载
forceload add 2121 5
#要做的事
data merge block 2121 60 6 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.dragon.question2.text2"}','{"translate":"pl.sign.dragon.question2.text3"}','{"text":""}']}}
data merge block 2125 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer2a.text3"}','{"text":""}']}}
data merge block 2123 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer2b.text3"}','{"text":""}']}}
data merge block 2119 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer2c.text3"}','{"text":""}']}}
data merge block 2117 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer2d.text3"}','{"text":""}']}}

setblock 2121 57 7 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2121 5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/132_1 1t