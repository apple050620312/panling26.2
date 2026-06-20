#要做的事
setblock 161 60 -228 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat62"}] replace 
setblock 148 60 -230 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat63"}] replace 
setblock 182 60 -229 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat64"}] replace 
setblock 184 60 -224 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat65"}] replace
setblock 211 60 -230 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat66"}] replace 
setblock 199 59 -217 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat67"}] replace 
setblock 175 60 -219 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/chat68"}] replace 
data merge block 201 67 -232 {front_text:{messages:['{"translate":""}','{"translate":""}','{"translate":"pl.sign.middle56.text3"}','{"translate":""}']}}
data merge block 214 67 -213 {front_text:{messages:['{"translate":""}','{"translate":""}','{"translate":"pl.sign.middle56.text3"}','{"translate":""}']}}
data merge block 215 67 -213 {front_text:{messages:['{"translate":""}','{"translate":""}','{"translate":"pl.sign.middle56.text3"}','{"translate":""}']}}
setblock 208 71 -233 air

kill @e[type=villager,tag=!panling]
execute positioned 161 60 -228 run function pld:npcs/middle/chat62
execute positioned 148 60 -230 run function pld:npcs/middle/chat63
execute positioned 182 60 -229 run function pld:npcs/middle/chat64
execute positioned 184 60 -224 run function pld:npcs/middle/chat65
execute positioned 211 60 -230 run function pld:npcs/middle/chat66
execute positioned 199 59 -217 run function pld:npcs/middle/chat67
execute positioned 175 60 -219 run function pld:npcs/middle/chat68
#区块卸载
forceload remove 150 -230
forceload remove 162 -231 211 -214

#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/9_5/pre 1t