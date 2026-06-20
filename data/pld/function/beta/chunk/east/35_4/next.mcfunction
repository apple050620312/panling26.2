#要做的事
data merge block 564 34 77 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east5.text2"}','{"text":""}','{"text":""}']}}
data merge block 568 34 76 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east5.text2"}','{"text":""}','{"text":""}']}}
data merge block 563 34 64 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east5.text2"}','{"text":""}','{"text":""}']}}


setblock 561 27 71 minecraft:command_block[block_entity_data={Command:"function pld:npcs/east/xianmain6"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 561 27 71 run function pld:npcs/east/xianmain6
#区块卸载
forceload remove 564 77
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/36_2/pre 1t