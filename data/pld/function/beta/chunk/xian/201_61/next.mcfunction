
#要做的事
data merge block 3230 51 981 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian14.text2"}','{"translate":"pl.frame.bjc"}','{"translate":""}']}}
setblock 3229 45 979 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/chat9"}] replace 
setblock 3246 42 1005 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/chat10"}] replace 
data merge block 3231 47 1007 {front_text:{messages:['{"translate":"pl.sign.xian18.text1"}','{"translate":""}','{"translate":""}','{"translate":""}']}}

kill @e[type=villager,tag=!panling]
execute positioned 3229 45 979 run function pld:npcs/xian/chat9
execute positioned 3246 42 1005 run function pld:npcs/xian/chat10
#区块卸载
forceload remove 3225 982 3237 1004
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/204_58/pre 1t