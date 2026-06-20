#要做的事
data merge block 71 47 158 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.stand1.text2"}','{"translate":"pl.sign.stand1.text3"}','{"translate":""}']}}
setblock 48 41 155 minecraft:command_block{Command:"function pld:npcs/middle/chat23"} replace 
setblock 64 40 154 minecraft:command_block{Command:'tellraw @a[distance=..6] {"translate":"pl.info.armor_stand4"}'} replace 


data merge block 53 47 135 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle69.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 58 47 131 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle69.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 50 47 135 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle70.text2"}','{"translate":"pl.sign.middle70.text3"}','{"translate":""}']}}
data merge block 58 47 137 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle71.text2"}','{"translate":"pl.sign.middle71.text3"}','{"translate":"pl.sign.middle71.text4"}']}}

setblock 73 41 150 air
setblock 73 41 153 air

kill @e[type=villager,tag=!panling]
execute positioned 48 41 155 run function pld:npcs/middle/chat23
#区块卸载
forceload remove 48 152 68 152
forceload remove 53 135
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_-1/pre 1t