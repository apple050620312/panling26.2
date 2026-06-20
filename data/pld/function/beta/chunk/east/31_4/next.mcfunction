#要做的事
setblock 535 65 67 air
data merge block 506 41 76 {front_text:{messages:['{"text":""}','{"translate":"pl.spsign.east2.text2"}','{"translate":"pl.spsign.east2.text3"}','{"text":""}']}}

setblock 522 31 66 minecraft:command_block[custom_data={Command:"function pld:npcs/east/chat3"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 522 31 66 run function pld:npcs/east/chat3
#区块卸载
forceload remove 506 76 533 70
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/32_0/pre 1t
