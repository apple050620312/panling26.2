#区块强加载
forceload add 1252 645 1274 647
#要做的事
data merge block 1272 43 646 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}
data merge block 1272 43 647 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}

data merge block 1268 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}
data merge block 1260 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}
data merge block 1252 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}

setblock 1252 40 645 minecraft:command_block{Command:"function pld:selections/stories/1_1"} replace
setblock 1260 40 645 minecraft:command_block{Command:"function pld:selections/stories/1_2"} replace
setblock 1268 40 645 minecraft:command_block{Command:"function pld:selections/stories/1_3"} replace

setblock 1274 39 647 minecraft:command_block{Command:"tp @p[x=1273,y=42,z=647,distance=..3] 1204 27 -381 -90 0"} replace

setblock 1250 40 642 minecraft:command_block{Command:"/particle happy_villager 1252 41 642 0.7 0.7 0.7 0 50"} replace


#区块卸载
forceload remove 1252 645 1274 647
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/82_24 1t