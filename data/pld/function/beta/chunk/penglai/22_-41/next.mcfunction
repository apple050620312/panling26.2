#要做的事
data merge block 359 46 -656 {front_text:{messages:['{"translate":"pl.sign.penglai4.text1"}','{"translate":"pl.sign.penglai4.text2"}','{"translate":""}','{"translate":""}']}}
setblock 350 39 -653 minecraft:command_block[custom_data={Command:"function pld:npcs/penglai/mainxx"}] replace 
data merge block 351 39 -647 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai5.text2"}','{"translate":""}','{"translate":""}']}}
kill @e[type=villager,tag=!panling]
execute positioned 350 39 -653 run function pld:npcs/penglai/mainxx
#区块卸载
forceload remove 353 -650 349 -652
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/22_-46/pre 1t