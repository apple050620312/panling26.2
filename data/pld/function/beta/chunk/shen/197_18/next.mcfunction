#要做的事
data merge block 3160 77 296 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.jitan.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3161 77 300 {front_text:{messages:['{"translate":"pl.sign.shen2.text1"}','{"translate":"pl.sign.shen1.text2"}','{"translate":"pl.sign.shen2.text3"}','{"translate":""}']}}

setblock 3165 77 278 minecraft:command_block[custom_data={Command:"function pld:npcs/shen/guard"}] replace 

setblock 3162 75 296 minecraft:command_block[custom_data={Command:"function pld:system/rechoose/rechoose"}] replace 

data merge block 3160 75 296 {Items:[]}
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3165 77 278 run function pld:npcs/shen/guard

#区块卸载
forceload remove 3161 276 3158 295
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/199_23/pre 1t