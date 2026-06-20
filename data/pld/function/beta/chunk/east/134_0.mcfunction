#区块强加载
forceload add 2159 5 2162 5
#要做的事
data merge block 2159 60 6 {front_text:{messages:['{"text":"(4)"}','{"translate":"pl.sign.dragon.question4.text2"}','{"translate":"pl.sign.dragon.question4.text3"}','{"translate":"pl.sign.dragon.question4.text4"}']}}
data merge block 2163 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer4a.text3"}','{"text":""}']}}
data merge block 2161 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer4b.text3"}','{"text":""}']}}
data merge block 2157 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer4c.text3"}','{"text":""}']}}
data merge block 2155 61 11 {front_text:{messages:['{"text":""}','{"text":""}','{"translate":"pl.sign.dragon.answer4d.text3"}','{"text":""}']}}
setblock 2159 57 7 minecraft:command_block[block_entity_data={Command:"tp @a[distance=..10] 2083 60 2"}] replace 
#区块卸载
forceload remove 2159 5 2162 5
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/134_1 1t