#要做的事
data merge block 1352 67 527 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.sword_reward.text2"}','{"translate":"pl.sign.sword_reward.text3"}','{"translate":""}']}}

setblock 1353 62 520 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/ex_sword2"}] replace 

data merge block 1354 92 523 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.special_room.1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1350 92 523 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.special_room.2.text2"}','{"translate":"pl.sign.special_room.2.text3"}','{"translate":""}']}}
data merge block 1350 92 516 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.special_room.3.text2"}','{"translate":"pl.sign.special_room.3.text3"}','{"translate":""}']}}
data merge block 1353 92 516 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.special_room.4.text2"}','{"translate":"pl.sign.special_room.4.text3"}','{"translate":""}']}}
data merge block 1353 92 519 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.special_room.5.text2"}','{"translate":"pl.sign.special_room.5.text3"}','{"translate":""}']}}
data merge block 1350 92 520 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.special_room.6.text2"}','{"translate":"pl.sign.special_room.6.text3"}','{"translate":""}']}}

setblock 1357 88 527 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 1376 38 522 90 ~"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 1353 62 520 run function pld:npcs/middle/ex_sword2
#区块卸载
forceload remove 1352 527
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/84_33/pre 1t