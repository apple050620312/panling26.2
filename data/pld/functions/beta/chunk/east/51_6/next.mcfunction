
#要做的事
data merge block 823 41 110 {front_text:{messages:['{"translate":"pl.sign.east6.text1"}','{"translate":"pl.sign.east7.text2"}','{"text":""}','{"text":""}']}}
data merge block 836 41 102 {front_text:{messages:['{"text":""}','{"translate":"pl.sign.east8.text2"}','{"text":""}','{"text":""}']}}

setblock 837 35 109 minecraft:command_block{Command:"function pld:npcs/east/teren"} replace 
kill @e[type=villager,tag=!panling]

execute positioned 837 35 109 run function pld:npcs/east/teren
#区块卸载
forceload remove 829 100 833 99
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/east/106_46/pre 1t