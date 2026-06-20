
#要做的事
data merge block 3280 19 -129 {Items:[]}
setblock 3284 16 -135 minecraft:command_block{Command:"function pld:npcs/zhan/zhanmain1"} replace 
setblock 3265 16 -148 minecraft:command_block{Command:"function pld:npcs/zhan/zhanmain2"} replace 
setblock 3266 15 -151 minecraft:command_block{Command:"function pld:npcs/zhan/chat1"} replace 
setblock 3271 15 -151 minecraft:command_block{Command:"function pld:npcs/zhan/chat2"} replace 
setblock 3273 15 -153 minecraft:command_block{Command:"function pld:npcs/zhan/supply3"} replace 
setblock 3268 17 -139 minecraft:command_block{Command:"function pld:npcs/zhan/pvp1_atk"} replace

setblock 3287 16 -143 minecraft:command_block{Command:"function pld:npcs/zhan/guard1"} replace 
setblock 3287 16 -135 minecraft:command_block{Command:"function pld:npcs/zhan/guard1"} replace 
setblock 3281 16 -134 minecraft:command_block{Command:"function pld:npcs/zhan/guard2"} replace 
setblock 3281 16 -142 minecraft:command_block{Command:"function pld:npcs/zhan/guard2"} replace 
setblock 3264 27 -159 minecraft:command_block{Command:"function pld:npcs/zhan/guard2"} replace 
setblock 3274 16 -148 minecraft:command_block{Command:"function pld:npcs/zhan/guard2"} replace 
setblock 3280 19 -134 minecraft:gold_block
setblock 3280 19 -142 minecraft:gold_block

data merge block 3280 21 -129 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.jitan.text2"}','{"translate":""}','{"translate":""}']}}

setblock 3274 19 -155 minecraft:command_block{Command:"function pld:system/supply/supplymain"} replace 


data merge block 3279 21 -136 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.get_menu.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.get_menu.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.get_menu.text3"}','{"translate":""}']}}

setblock 3278 19 -136 minecraft:command_block{Command:"execute as @p[x=3279,y=20,z=-136,distance=..5] run function pld:system/menubook/update/main"} destroy 
data merge block 3274 21 -154 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.supply.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3274 22 -143 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.zhan12.text2"}','{"translate":"pl.sign.zhan12.text3"}','{"translate":""}']}}
data merge block 3280 22 -147 {front_text:{messages:['{"translate":"pl.sign.zhan13.text1"}','{"translate":"pl.sign.zhan13.text2"}','{"translate":"pl.sign.zhan13.text3"}','{"translate":""}']}}

setblock 3262 11 -138 minecraft:command_block{Command:"execute as @p[x=3264,y=11,z=-138,distance=..5] run function pld:pvp/1/pre/sign/sign_up_atk"} replace
setblock 3267 21 -135 minecraft:command_block{Command:"execute as @p[x=3267,y=21,z=-137,distance=..5] run function pld:pvp/1/pre/sign/player_check_atk"} replace
setblock 3272 11 -138 minecraft:command_block{Command:"tp @p[distance=..5] 3266 21 -138 -90 0"} replace

data merge block 3268 21 -137 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.zhan3.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.zhan3.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.zhan3.text3"}','{"translate":""}']}}
data merge block 3248 30 -157 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.zhan1.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.zhan1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":""}','{"translate":""}']}}


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3287 16 -143 run function pld:npcs/zhan/guard1
execute positioned 3287 16 -135 run function pld:npcs/zhan/guard1
execute positioned 3281 16 -134 run function pld:npcs/zhan/guard2
execute positioned 3281 16 -142 run function pld:npcs/zhan/guard2
execute positioned 3264 27 -159 run function pld:npcs/zhan/guard2
execute positioned 3274 16 -148 run function pld:npcs/zhan/guard2
execute positioned 3284 16 -135 run function pld:npcs/zhan/zhanmain1
execute positioned 3265 16 -148 run function pld:npcs/zhan/zhanmain2
execute positioned 3266 15 -151 run function pld:npcs/zhan/chat1
execute positioned 3271 15 -151 run function pld:npcs/zhan/chat2
execute positioned 3273 15 -153 run function pld:npcs/zhan/supply3
execute positioned 3268 17 -139 run function pld:npcs/zhan/pvp1_atk
#区块卸载
forceload remove 3267 -139 3288 -150
forceload remove 3262 -138
forceload remove 3263 -159
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/205_-11/pre 1t