
#要做的事
data merge block 176 47 162 {front_text:{messages:['{"translate":"pl.sign.middle57.text1"}','{"translate":"pl.sign.middle57.text2"}','{"translate":"pl.sign.middle57.text3"}','{"translate":"pl.sign.middle57.text4"}']}}
data merge block 175 47 161 {front_text:{messages:['{"translate":"pl.sign.middle57.text1"}','{"translate":""}','{"translate":""}','{"translate":"pl.sign.middle57.text4"}']}}
data merge block 175 47 163 {front_text:{messages:['{"translate":"pl.sign.middle57.text1"}','{"translate":""}','{"translate":""}','{"translate":"pl.sign.middle57.text4"}']}}

data merge block 161 13 164 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle58.text2"}','{"translate":"pl.sign.middle58.text3"}','{"translate":""}']}}

setblock 173 44 160 minecraft:command_block{Command:"execute as @p[x=173,y=47,z=160,distance=..10] run function pld:system/te71/incheck"} replace 
setblock 173 46 162 minecraft:repeating_command_block{Command:"execute as @p[x=175,y=48,z=162,distance=..10] run function pld:system/te71/bee_found"} replace 
data merge block 175 46 162 {Items:}
setblock 161 11 166 minecraft:command_block{Command:"execute as @p[x=161,y=12,z=164,distance=..10] run function pld:system/te71/honey_check"} replace 

data merge block 161 11 164 {Items:}
fill 161 11 167 161 11 168 air


setblock 162 7 164 minecraft:command_block{Command:"function pld:npcs/middle/chat69"} replace 
setblock 162 42 162 minecraft:command_block{Command:"function pld:npcs/middle/chat71"} replace 
setblock 159 11 167 air
kill @e[type=villager,tag=!panling]
execute positioned 162 7 164 run function pld:npcs/middle/chat69
execute positioned 162 42 162 run function pld:npcs/middle/chat71
#区块卸载
forceload remove 177 164 166 163
forceload remove 159 167
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/11_3/pre 1t
