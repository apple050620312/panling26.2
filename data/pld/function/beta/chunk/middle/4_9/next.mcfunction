
#要做的事
setblock 80 41 141 minecraft:command_block{Command:"function pld:npcs/middle/te23"} replace 
setblock 89 44 142 minecraft:command_block{Command:"function pld:npcs/middle/tong2"} replace 
setblock 89 42 142 minecraft:command_block{Command:"function pld:npcs/middle/tong3"} replace 
setblock 86 42 149 minecraft:command_block{Command:"function pld:npcs/middle/tong8"} replace 
setblock 83 44 149 minecraft:command_block{Command:"function pld:npcs/middle/tong9"} replace 
setblock 83 42 149 minecraft:command_block{Command:"function pld:npcs/middle/tong10"} replace
setblock 89 41 133 minecraft:command_block{Command:"function pld:npcs/middle/chat16"} replace 
setblock 71 45 142 minecraft:command_block{Command:"tp @p[x=76,y=47,z=142,distance=..3] 80 33 156 -90 0"} replace 
setblock 73 44 142 minecraft:repeating_command_block{Command:"tp @e[x=76,y=47,z=142,distance=..3,type=!player] ~ ~-1000 ~"} replace 


setblock 78 47 145 air
data merge block 74 47 144 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle34.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 74 47 140 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle34.text2"}','{"translate":""}','{"translate":""}']}}
setblock 76 46 143 air
setblock 79 46 143 air
data merge block 80 47 138 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle37.text2"}','{"translate":"pl.sign.middle37.text3"}','{"translate":""}']}}
data merge block 86 47 133 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle37.text2"}','{"translate":"pl.sign.middle37.text3"}','{"translate":""}']}}
data merge block 78 47 133 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle37.text2"}','{"translate":"pl.sign.middle37.text3"}','{"translate":""}']}}
data merge block 90 47 145 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle37.text2"}','{"translate":"pl.sign.middle37.text3"}','{"translate":""}']}}
data merge block 90 47 141 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle37.text2"}','{"translate":"pl.sign.middle37.text3"}','{"translate":""}']}}
data merge block 94 46 143 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle37.text2"}','{"translate":"pl.sign.middle37.text3"}','{"translate":""}']}}

setblock 75 40 144 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "?", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 7, posZ: 0,integrity:1.0f,showair:0b,name:"pld:en_npcs",sizeY:9,sizeZ:4,showboundingbox:0b}
setblock 75 40 143 redstone_block
setblock 75 40 143 air
fill 78 47 147 77 48 147 minecraft:black_stained_glass

kill @e[type=villager,tag=!panling]
execute positioned 80 41 141 run function pld:npcs/middle/te23
execute positioned 89 44 142 run function pld:npcs/middle/tong2
execute positioned 89 42 142 run function pld:npcs/middle/tong3
execute positioned 86 42 149 run function pld:npcs/middle/tong8
execute positioned 83 44 149 run function pld:npcs/middle/tong9
execute positioned 83 42 149 run function pld:npcs/middle/tong10
execute positioned 89 41 133 run function pld:npcs/middle/chat16
execute positioned 77 46 145 run function pld:npcs/middle/tong19
execute positioned 79 46 145 run function pld:npcs/middle/tong18
#区块卸载
forceload remove 74 146 84 140
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/4_11/pre 1t