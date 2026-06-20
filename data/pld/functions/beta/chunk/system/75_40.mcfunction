#区块强加载
forceload add 1204 648 1220 648
#要做的事
data merge block 1224 43 646 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}
data merge block 1224 43 647 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}

data merge block 1204 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}

data merge block 1212 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}
data merge block 1220 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}

setblock 1204 40 645 minecraft:command_block{Command:"function pld:selections/stories/0_1"} replace
setblock 1212 40 645 minecraft:command_block{Command:"function pld:selections/stories/0_2"} replace
setblock 1220 40 645 minecraft:command_block{Command:"function pld:selections/stories/0_3"} replace

setblock 1226 39 647 minecraft:command_block{Command:"tp @p[x=1225,y=42,z=647,distance=..3] 1204 27 -381 -90 0"} replace

#区块卸载
forceload remove 1204 648 1220 648
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/78_40 1t