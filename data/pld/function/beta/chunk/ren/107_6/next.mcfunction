
#要做的事
data merge block 1724 160 101 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren9.text2"}','{"translate":"pl.sign.ren9.text3"}','{"translate":""}']}}
data merge block 1723 160 102 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren10.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1732 161 99 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren11.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1738 161 100 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren11.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1739 160 103 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren9.text2"}','{"translate":""}','{"translate":""}']}}


setblock 1727 158 86 structure_block[block_entity_data={metadata: "",mirror: "NONE",ignoreEntities: 0b,powered: 0b,seed: 0L,author: "?",rotation: "NONE",posX: 0,mode: "LOAD",posY: 1,posZ: 0,integrity: 1.0f,showair: 0b,name: "pld:tjp4",showboundingbox: 1b}]
setblock 1727 159 86 redstone_block
data merge block 1730 160 90 {CustomName:'{"translate":"pl.name.dzt"}'}
setblock 1732 55 106 minecraft:stone_bricks replace

setblock 1740 144 97 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/chat9"}] replace 
setblock 1715 145 105 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/chat10"}] replace 
setblock 1737 157 95 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/renmain3"}] replace 
setblock 1737 157 94 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/rentong1"}] replace 
setblock 1739 157 94 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/rentong2"}] replace 
setblock 1741 157 94 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/rentong3"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 1740 144 97 run function pld:npcs/ren/chat9
execute positioned 1715 145 105 run function pld:npcs/ren/chat10
execute positioned 1737 157 95 run function pld:npcs/ren/renmain3
execute positioned 1737 157 94 run function pld:npcs/ren/rentong1
execute positioned 1739 157 94 run function pld:npcs/ren/rentong2
execute positioned 1741 157 94 run function pld:npcs/ren/rentong3
#区块卸载
forceload remove 1724 101 1732 99
forceload remove 1727 86 1732 99
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/107_9/pre 1t
