#要做的事
data merge block 352 53 -674 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai7.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 342 53 -674 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai8.text2"}','{"translate":""}','{"translate":"pl.sign.penglai8.text4"}']}}

setblock 345 50 -681 minecraft:command_block[custom_data={Command:"particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"}] replace 
setblock 341 48 -684 minecraft:command_block[custom_data={Command:"function pld:npcs/penglai/rentong7"}] replace
setblock 353 50 -674 minecraft:command_block[custom_data={Command:"execute as @p[x=353,y=52,z=-674,distance=..2] run function pld:system/into_penglaidf"}] replace

kill @e[type=villager,tag=!panling]
execute positioned 341 48 -684 run function pld:npcs/penglai/rentong7
#区块卸载
forceload remove 347 -676 354 -676
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/21_-45/pre 1t