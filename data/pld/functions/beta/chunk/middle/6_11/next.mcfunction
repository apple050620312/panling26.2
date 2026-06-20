
#要做的事
data merge block 185 48 183 {front_text:{messages:['{"translate":"pl.sign.middle40.text1"}','{"translate":""}','{"translate":"pl.sign.middle40.text3"}','{"translate":"pl.sign.middle40.text4"}']}}
data merge block 173 48 183 {front_text:{messages:['{"translate":"pl.sign.middle40.text1"}','{"translate":""}','{"translate":"pl.sign.middle40.text3"}','{"translate":"pl.sign.middle40.text4"}']}}
data merge block 173 48 179 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle41.text2"}','{"translate":"pl.sign.middle41.text3"}','{"translate":""}']}}
data merge block 120 46 188 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function pld:system/te71/lost_bee"},"text":""}','{"text":"???"}','{"translate":""}','{"translate":""}']}}

setblock 162 41 186 minecraft:command_block{Command:"function pld:npcs/middle/food1"} replace 
setblock 146 41 184 minecraft:command_block{Command:"function pld:npcs/middle/food2"} replace 
setblock 135 42 185 minecraft:command_block{Command:"function pld:npcs/middle/food3"} replace 
setblock 119 42 185 minecraft:command_block{Command:"function pld:npcs/middle/food4"} replace 
setblock 101 42 184 minecraft:command_block{Command:"function pld:npcs/middle/tong11"} replace 
setblock 187 42 178 minecraft:command_block{Command:"function pld:npcs/middle/chat04"} replace 
setblock 167 41 179 minecraft:command_block{Command:"function pld:npcs/middle/chat05"} replace 
setblock 151 41 176 minecraft:command_block{Command:"function pld:npcs/middle/chat06"} replace 
setblock 155 41 184 minecraft:command_block{Command:"function pld:npcs/middle/chat07"} replace 
setblock 130 41 188 minecraft:command_block{Command:"function pld:npcs/middle/chat08"} replace 
setblock 127 41 185 minecraft:command_block{Command:"function pld:npcs/middle/chat09"} replace 

kill @e[type=villager,tag=!panling]
execute positioned 162 41 186 run function pld:npcs/middle/food1
execute positioned 146 41 184 run function pld:npcs/middle/food2
execute positioned 135 42 185 run function pld:npcs/middle/food3
execute positioned 119 42 185 run function pld:npcs/middle/food4
execute positioned 101 42 184 run function pld:npcs/middle/tong11
execute positioned 187 42 178 run function pld:npcs/middle/chat04
execute positioned 167 41 179 run function pld:npcs/middle/chat05
execute positioned 151 41 176 run function pld:npcs/middle/chat06
execute positioned 155 41 184 run function pld:npcs/middle/chat07
execute positioned 130 41 188 run function pld:npcs/middle/chat08
execute positioned 127 41 185 run function pld:npcs/middle/chat09
#区块卸载
forceload remove 103 180 184 180
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/7_-10/pre 1t