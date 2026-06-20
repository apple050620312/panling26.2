#区块强加载
forceload add 2197 5
#要做的事
data merge block 2197 60 6 {front_text:{messages:['{"text":"(6)"}','{"translate":"pl.sign.dragon.question6.text2"}','{"translate":"pl.sign.dragon.question6.text3"}','{"text":""}']}}
data merge block 2201 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer6a.text3"}','{"text":""}']}}
data merge block 2199 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer6b.text3"}','{"text":""}']}}
data merge block 2195 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer6c.text3"}','{"text":""}']}}
data merge block 2193 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer6d.text3"}','{"text":""}']}}
setblock 2197 57 7 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2197 5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/137_1 1t