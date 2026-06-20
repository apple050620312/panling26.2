
#要做的事
data merge block 3219 69 871 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian8.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 3221 69 873 {front_text:{messages:['{"translate":"pl.sign.xian9.text1"}','{"translate":"pl.sign.xian9.text2"}','{"translate":"pl.sign.xian9.text3"}','{"translate":"pl.sign.xian6.text4"}']}}
data merge block 3218 69 878 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian5.text1"}','{"translate":"pl.sign.xian5.text3"}','{"translate":""}']}}

setblock 3230 54 874 structure_block[block_entity_data={metadata: "",mirror: "NONE",ignoreEntities: 0b,powered: 0b,seed: 0L,author: "?",rotation: "NONE",posX: 0,mode: "LOAD",posY: 1,posZ: 0,integrity: 1.0f,showair: 0b,name: "pld:tjp2",showboundingbox: 1b}]
setblock 3230 55 874 redstone_block
setblock 3240 63 875 minecraft:repeating_command_block[block_entity_data={Command:"tp @e[x=3240,y=64,z=876,distance=..5,type=!player] ~ ~-1000 ~"}] replace 
data merge block 3237 56 881 {CustomName:'{"translate":"pl.name.dzt"}'}

#setblock 3235 64 881 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/xianmain3"}] replace 
#setblock 3235 64 882 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/xiantong1"}] replace 
#setblock 3235 64 880 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/xiantong2"}] replace 
#setblock 3234 64 881 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/xiantong3"}] replace 
setblock 3226 62 873 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/chat3"}] replace 
#
#setblock 3235 65 881 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/xh2"}] replace 

setblock 3240 54 878 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 3240 67 880 0 0"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3217 66 815 run function pld:npcs/xian/chat3
#区块卸载
forceload remove 3239 870 3222 890
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/201_61/pre 1t