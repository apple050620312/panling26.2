#要做的事
data merge block 37 47 152 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle38.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 36 47 151 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle38.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 31 47 156 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle38.text2"}','{"translate":""}','{"translate":""}']}}
setblock 34 42 163 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/rentong7"}] replace 
setblock 31 45 161 minecraft:command_block[block_entity_data={Command:"particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"}] replace 
setblock 37 45 162 minecraft:repeating_command_block[block_entity_data={Command:"/data merge block ~ ~ ~2 {Items:[]}"}] replace

data merge block 37 47 164 {front_text:{messages:['{"translate":"pl.sign.middle39.text1"}','{"translate":"pl.sign.middle39.text2"}','{"translate":"pl.sign.middle39.text3"}','{"translate":""}']}}
setblock 43 43 164 air
fill 45 46 164 45 45 164 air

kill @e[type=villager,tag=!panling]
execute positioned 34 42 163 run function pld:npcs/middle/rentong7
#区块卸载
forceload remove 41 149 28 167
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/3_0/pre 1t