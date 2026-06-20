#区块强加载
forceload add 2159 22 2161 22
#要做的事
data merge block 2159 60 24 {front_text:{messages:['{"text":"(14)"}','{"translate":"pl.sign.dragon.question14.text2"}','{"translate":"pl.sign.dragon.question14.text3"}','{"text":""}']}}
data merge block 2163 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer14a.text3"}','{"text":""}']}}
data merge block 2161 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer14b.text3"}','{"text":""}']}}
data merge block 2157 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer14c.text3"}','{"text":""}']}}
data merge block 2155 61 29 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer14d.text3"}','{"text":""}']}}
setblock 2159 57 25 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2159 22 2161 22
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/135_0 1t
