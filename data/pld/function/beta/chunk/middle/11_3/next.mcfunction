
#要做的事
setblock 180 41 63 minecraft:glowstone replace
setblock 179 41 64 minecraft:glowstone replace
setblock 178 41 63 minecraft:glowstone replace
setblock 179 41 62 minecraft:glowstone replace
data merge block 176 43 54 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle5.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 182 43 54 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle5.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 170 43 66 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle6.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 170 43 60 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle6.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 188 43 60 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle7.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 188 43 66 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle7.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 182 43 72 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle8.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 176 43 72 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle8.text2"}','{"translate":""}','{"translate":""}']}}
setblock 179 40 63 minecraft:command_block{Command:"function pld:system/spawnpoint/spawnpointset"} replace 
setblock 179 40 64 air

setblock 187 40 48 minecraft:command_block{Command:"function pld:npcs/middle/chat46"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 187 40 48 run function pld:npcs/middle/chat46
#区块卸载
forceload remove 185 54 172 70
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/11_6/pre 1t
