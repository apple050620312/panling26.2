#要做的事
setblock 273 41 -188 minecraft:command_block{Command:"function pld:npcs/middle/zhanmain5"} replace 
setblock 277 19 -183 minecraft:command_block{Command:"function pld:npcs/middle/ze2"} replace 
setblock 272 45 -185 minecraft:repeating_command_block{Command:"function pld:system/ex_zhan/check"} replace 

setblock 276 22 -178 minecraft:command_block{Command:"execute as @p[x=276,y=24,z=-178,distance=..1] run function pld:system/ex_zhan/leave_ze2"} replace 

data merge block 276 25 -178 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ze1.text2"}','{"translate":"pl.sign.ze1.text3"}','{"translate":""}']}}
data merge block 272 46 -188 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle21.text2"}','{"translate":"pl.sign.middle21.text3"}','{"translate":""}']}}
data merge block 258 62 -186 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle22.text2"}','{"translate":"pl.sign.middle22.text3"}','{"translate":""}']}}
data merge block 258 62 -181 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle22.text2"}','{"translate":"pl.sign.middle22.text3"}','{"translate":""}']}}
data merge block 254 37 -239 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle23.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 272 45 -187 {Items:}

kill @e[type=villager,tag=!panling]
execute positioned 273 41 -188 run function pld:npcs/middle/zhanmain5
execute positioned 277 19 -183 run function pld:npcs/middle/ze2
#区块卸载
forceload remove 269 -187 275 -190
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/16_2/pre 1t