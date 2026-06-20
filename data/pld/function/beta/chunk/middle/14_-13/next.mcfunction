
#要做的事
data merge block 233 64 -210 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle12.text2"}','{"translate":""}','{"translate":""}']}}

setblock 233 63 -210 air
setblock 245 61 -206 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/mainx"}] replace 
#setblock 238 63 -210 minecraft:command_block{Command:"function pld:system/spawnpoint/spawnpointset"} replace
setblock 232 62 -210 minecraft:command_block[custom_data={Command:"tp @p[distance=..4] 241 45 -213"}] replace 
setblock 253 61 -210 minecraft:command_block[custom_data={Command:"function pld:system/tpsystem/intotpsystem"}] replace 

setblock 236 56 -210 minecraft:command_block[custom_data={Command:"function pld:system/tpsystem/tpout"}] replace 
setblock 236 55 -205 minecraft:command_block[custom_data={Command:"function pld:system/tpsystem/tpeast"}] replace 
setblock 231 55 -210 minecraft:command_block[custom_data={Command:"function pld:system/tpsystem/tpsouth"}] replace 
setblock 236 55 -215 minecraft:command_block[custom_data={Command:"function pld:system/tpsystem/tpwest"}] replace
setblock 241 55 -210 minecraft:command_block[custom_data={Command:"function pld:system/tpsystem/tpnorth"}] replace 

fill 237 64 -211 239 65 -209 air
setblock 238 63 -210 minecraft:stone_bricks replace

#setblock 225 23 -221 redstone_block
#setblock 225 22 -221 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 1b, seed: 0L, author: "yl_jiu_qiu", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 23, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:mirror", sizeY: 32, sizeZ: 23, showboundingbox: 1b}
setblock 236 41 -182 minecraft:oak_pressure_plate

data merge block 236 57 -209 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle17.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 235 57 -210 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle17.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 236 57 -211 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle17.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 237 57 -210 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle17.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 236 58 -205 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.mirror_east.text2"}','{"translate":"pl.sign.mirror_east.text3"}','{"translate":""}']}}
data merge block 231 58 -210 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.mirror_south.text2"}','{"translate":"pl.sign.mirror_south.text3"}','{"translate":""}']}}
data merge block 236 58 -215 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.mirror_west.text2"}','{"translate":"pl.sign.mirror_west.text3"}','{"translate":""}']}}
data merge block 241 58 -210 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.mirror_north.text2"}','{"translate":"pl.sign.mirror_north.text3"}','{"translate":""}']}}

data merge block 235 46 -213 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle18.text2"}','{"translate":"pl.sign.middle18.text3"}','{"translate":""}']}}
data merge block 238 46 -216 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle19.text2"}','{"translate":"pl.sign.middle19.text3"}','{"translate":""}']}}
data merge block 242 46 -213 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle20.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 226 62 -196 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle51.text2"}','{"translate":"pl.sign.middle51.text3"}','{"translate":""}']}}
data merge block 238 62 -195 {front_text:{messages:['{"translate":"pl.sign.middle35.text1"}','{"translate":"pl.sign.middle35.text2"}','{"translate":""}','{"translate":"pl.sign.middle35.text4"}']}}

setblock 243 44 -213 minecraft:command_block[custom_data={Command:"tp @p[distance=..5] 234 64 -210"}] replace 

setblock 232 44 -213 air
setblock 232 43 -213 air
data merge block 233 43 -213 {Items:[]}
setblock 233 43 -211 minecraft:repeating_command_block[custom_data={Command:"execute as @p[x=235,y=45,z=-213,distance=..5] unless block 233 43 -213 hopper{Items:[]} run function pld:system/legend_unseal/check"}] replace 

setblock 237 40 -210 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "yl_jiu_qiu", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 23, posZ: 0, integrity: 1.0f, showair: 0b, name: "pld:npc_legend", sizeY: 32, sizeZ: 23, showboundingbox: 1b}
setblock 236 40 -210 redstone_block

fill 231 43 -211 224 44 -214 air
fill 223 44 -213 222 42 -213 air
fill 226 42 -221 232 42 -221 air
fill 233 42 -205 227 42 -205 air

kill @e[type=villager,tag=!panling]
execute positioned 245 61 -206 run function pld:npcs/middle/mainx
execute positioned 237 45 -210 run function pld:npcs/middle/tong22
#区块卸载
forceload remove 236 -203 247 -215
forceload remove 222 -213
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/14_3/pre 1t