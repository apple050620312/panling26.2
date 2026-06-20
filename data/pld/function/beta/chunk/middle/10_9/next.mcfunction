#要做的事
data merge block 161 13 139 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle59.text2"}','{"translate":"pl.sign.middle59.text3"}','{"translate":""}']}}

setblock 162 7 139 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat70"}] replace 

setblock 170 9 134 minecraft:command_block[block_entity_data={Command:"tp @p[x=170,y=12,z=135,distance=..2] 175 48 160"}] replace
setblock 170 9 159 minecraft:command_block[block_entity_data={Command:"tp @p[x=170,y=12,z=160,distance=..2] 175 48 160"}] replace
setblock 170 44 159 minecraft:command_block[block_entity_data={Command:"tp @p[x=170,y=47,z=160,distance=..2] 175 48 160"}] replace 

setblock 161 11 141 minecraft:command_block[block_entity_data={Command:"execute as @p[x=161,y=12,z=139,distance=..5] run function pld:system/te71/material_check"}] replace 
setblock 161 11 142 air
setblock 161 11 143 air
data merge block 161 11 139 {Items:[]}
setblock 159 11 142 air
kill @e[type=villager,tag=!panling]
execute positioned 162 7 139 run function pld:npcs/middle/chat70
#区块卸载
forceload remove 166 158 164 139
forceload remove 159 142
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/10_10/pre 1t