#区块强加载
forceload add 2177 22 2174 27
#要做的事
data merge block 2178 60 24 {front_text:{messages:['{"text":"(13)"}','{"translate":"pl.sign.dragon.question13.text2"}','{"translate":"pl.sign.dragon.question13.text3"}','{"text":""}']}}
data merge block 2182 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer13a.text3"}','{"text":""}']}}
data merge block 2180 61 30 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer13b.text3"}','{"text":""}']}}
data merge block 2176 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer13c.text3"}','{"text":""}']}}
data merge block 2174 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer13d.text3"}','{"text":""}']}}
setblock 2178 57 25 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2177 22 2174 27
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/137_0 1t