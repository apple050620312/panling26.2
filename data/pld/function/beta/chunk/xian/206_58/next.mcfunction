
#要做的事
data merge block 3320 109 939 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian16.text2"}','{"translate":"pl.sign.xian16.text3"}','{"translate":""}']}}
data merge block 3320 109 944 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian16.text2"}','{"translate":"pl.sign.xian16.text3"}','{"translate":""}']}}

setblock 3311 100 939 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3311 100 944 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3319 104 939 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3319 104 944 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 

execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3311 100 939 run function pld:npcs/xian/guard
execute positioned 3311 100 944 run function pld:npcs/xian/guard
execute positioned 3319 104 939 run function pld:npcs/xian/guard
execute positioned 3319 104 944 run function pld:npcs/xian/guard
#区块卸载
forceload remove 3318 951 3306 939
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/208_57/pre 1t