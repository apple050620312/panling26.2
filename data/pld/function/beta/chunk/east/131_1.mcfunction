#区块强加载
forceload add 2102 23
#要做的事
data merge block 2102 60 24 {front_text:{messages:['{"text":"(17)"}','{"translate":"pl.sign.dragon.question17.text2"}','{"translate":"pl.sign.dragon.question17.text3"}','{"text":""}']}}
data merge block 2106 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer17a.text3"}','{"text":""}']}}
data merge block 2104 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer17b.text3"}','{"text":""}']}}
data merge block 2100 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer17c.text3"}','{"text":""}']}}
data merge block 2098 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer17d.text3"}','{"text":""}']}}
setblock 2102 57 25 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2102 23
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/131_2 1t