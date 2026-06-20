#区块强加载
forceload add 2216 5
#要做的事
data merge block 2216 60 6 {front_text:{messages:['{"text":"(7)"}','{"translate":"pl.sign.dragon.question7.text2"}','{"translate":"pl.sign.dragon.question7.text3"}','{"text":""}']}}
data merge block 2220 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer7a.text3"}','{"text":""}']}}
data merge block 2218 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer7b.text3"}','{"text":""}']}}
data merge block 2214 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer7c.text3"}','{"text":""}']}}
data merge block 2212 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer7d.text3"}','{"text":""}']}}
setblock 2216 57 7 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace

#区块卸载
forceload remove 2216 5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/138_1 1t