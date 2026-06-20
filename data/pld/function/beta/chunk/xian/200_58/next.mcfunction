
#要做的事
data merge block 3234 60 938 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian5.text1"}','{"translate":""}','{"translate":""}']}}
data merge block 3209 60 944 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian5.text3"}','{"translate":""}','{"translate":""}']}}
data merge block 3221 60 934 {front_text:{messages:['{"translate":"pl.sign.xian10.text1"}','{"translate":"pl.sign.xian10.text2"}','{"translate":"pl.sign.xian10.text3"}','{"translate":""}']}}
data merge block 3228 60 943 {front_text:{messages:['{"translate":"pl.sign.xian5.text3"}','{"translate":"pl.sign.xian11.text2"}','{"translate":"pl.sign.xian11.text3"}','{"translate":""}']}}
data merge block 3214 60 939 {front_text:{messages:['{"translate":"pl.sign.xian5.text1"}','{"translate":"pl.sign.xian12.text2"}','{"translate":"pl.sign.xian12.text3"}','{"translate":""}']}}
data merge block 3213 59 941 {front_text:{messages:['{"translate":"pl.spsign.xian1.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.xian1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}','{"translate":""}']}}


setblock 3218 56 944 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3218 56 938 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3226 56 944 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 
setblock 3226 56 938 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/guard"}] replace 

setblock 3225 56 939 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/xh3"}] replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3225 56 939 run function pld:npcs/xian/xh3
execute positioned 3218 56 944 run function pld:npcs/xian/guard
execute positioned 3218 56 938 run function pld:npcs/xian/guard
execute positioned 3226 56 944 run function pld:npcs/xian/guard
execute positioned 3226 56 938 run function pld:npcs/xian/guard
#区块卸载
forceload remove 3208 936 3240 951
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/201_47/pre 1t