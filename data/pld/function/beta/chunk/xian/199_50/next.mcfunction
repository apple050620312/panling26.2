
#要做的事
data merge block 3188 108 837 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.qz"}','{"translate":""}','{"translate":""}']}}
data merge block 3192 106 837 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian4.text2"}','{"translate":"pl.sign.xian4.text3"}','{"translate":""}']}}

data merge block 3179 100 818 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren17.text4"}','{"translate":""}','{"translate":""}']}}

data merge block 3179 95 806 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian3.text2"}','{"translate":"pl.sign.xian3.text3"}','{"translate":"pl.sign.xian3.text4"}']}}
data merge block 3199 86 826 {front_text:{messages:['{"translate":"pl.sign.xian5.text1"}','{"translate":"pl.sign.xian5.text2"}','{"translate":"pl.sign.xian5.text3"}','{"translate":""}']}}

setblock 3181 105 835 minecraft:command_block{Command:"particle enchant ~ ~3 ~ 0.2 0.2 0.2 0.0 4"} replace 
setblock 3181 102 833 minecraft:command_block{Command:"function pld:npcs/xian/xiantong7"} replace 
setblock 3172 89 808 minecraft:command_block{Command:"function pld:npcs/xian/chat4"} replace 
setblock 3171 89 804 minecraft:command_block{Command:"function pld:npcs/xian/chat5"} replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3181 102 833 run function pld:npcs/xian/xiantong7
execute positioned 3172 89 808 run function pld:npcs/xian/chat4
execute positioned 3171 89 804 run function pld:npcs/xian/chat5
#区块卸载
forceload remove 3192 808 3176 837
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/200_52/pre 1t