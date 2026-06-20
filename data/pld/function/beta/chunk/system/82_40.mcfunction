#区块强加载
forceload add 1320 646 1300 648
#要做的事
data merge block 1320 43 646 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}
data merge block 1320 43 647 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story2.text2"}','{"translate":"pl.sign.story2.text3"}','{"translate":""}']}}

data merge block 1316 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}
data merge block 1308 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}
data merge block 1300 43 648 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.story1.text2"}','{"translate":"pl.sign.story1.text3"}','{"translate":""}']}}

setblock 1300 40 645 minecraft:command_block[block_entity_data={Command:"function pld:selections/stories/2_1"}] replace
setblock 1308 40 645 minecraft:command_block[block_entity_data={Command:"function pld:selections/stories/2_2"}] replace
setblock 1316 40 645 minecraft:command_block[block_entity_data={Command:"function pld:selections/stories/2_3"}] replace

setblock 1322 39 647 minecraft:command_block[block_entity_data={Command:"tp @p[x=1321,y=42,z=646,distance=..3] 1204 27 -381 -90 0"}] replace

setblock 1300 40 642 minecraft:command_block[block_entity_data={Command:"/particle happy_villager 1302 42 642 0.1 2 0.2 0 50"}] replace
setblock 1306 40 642 minecraft:command_block[block_entity_data={Command:"/particle happy_villager 1308 43 642 0.7 0.7 0.7 0 50"}] replace

setblock 1307 45 641 minecraft:light
#区块卸载
forceload remove 1320 646 1300 648
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/83_35 1t