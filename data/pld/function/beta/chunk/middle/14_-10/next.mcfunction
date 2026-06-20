#要做的事
data merge block 229 60 -146 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle11.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 228 60 -147 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle10.text2"}','{"translate":"pl.sign.middle9.text3"}','{"translate":""}']}}

fill 249 59 -158 249 59 -160 air
setblock 249 59 -160 minecraft:spruce_planks

setblock 249 58 -160 minecraft:command_block{Command:"function pld:npcs/middle/tong20"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 249 58 -160 run function pld:npcs/middle/tong20
#区块卸载
forceload remove 236 -145 244 -154
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/14_-13/pre 1t