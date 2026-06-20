#区块强加载
forceload add 1368 647 1348 645
#要做的事
data merge block 1368 43 647 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}
data merge block 1368 43 646 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}

data merge block 1348 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}
data merge block 1356 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}
data merge block 1364 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}

setblock 1348 40 645 minecraft:command_block{Command:"function pld:selections/stories/3_1"} replace
setblock 1356 40 645 minecraft:command_block{Command:"function pld:selections/stories/3_2"} replace
setblock 1364 40 645 minecraft:command_block{Command:"function pld:selections/stories/3_3"} replace

setblock 1370 39 647 minecraft:command_block{Command:"tp @p[x=1369,y=42,z=646,distance=..3] 1204 27 -381 -90 0"} replace

#区块卸载
forceload remove 1368 647 1348 645
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/85_24 1t