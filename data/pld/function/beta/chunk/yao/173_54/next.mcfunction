#要做的事
data merge block 2768 53 865 {front_text:{messages:['{"translate":"pl.sign.yao5.text1"}','{"translate":"pl.sign.yao7.text2"}','{"translate":"pl.sign.yao5.text2"}','{"translate":"pl.sign.yao5.text3"}']}}
data merge block 2793 53 858 {front_text:{messages:['{"translate":"pl.sign.yao5.text1"}','{"translate":"pl.sign.yao5.text2"}','{"translate":"pl.sign.yao5.text3"}','{"translate":""}']}}
data merge block 2769 54 855 {front_text:{messages:['{"translate":"pl.sign.yao5.text1"}','{"translate":"pl.sign.yao5.text2"}','{"translate":"pl.sign.yao5.text3"}','{"translate":""}']}}
data merge block 2782 54 866 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao4.text2"}','{"translate":"pl.sign.yao1.text3"}','{"translate":""}']}}
data merge block 2771 54 869 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao4.text2"}','{"translate":"pl.sign.yao6.text3"}','{"translate":""}']}}

setblock 2785 49 864 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/yaomain2"}] replace 
setblock 2777 47 873 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/chat8"}] replace 
setblock 2795 50 865 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/guard"}] replace 
setblock 2775 49 860 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/guard"}] replace 

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2785 49 864 run function pld:npcs/yao/yaomain2
execute positioned 2777 47 873 run function pld:npcs/yao/chat8
execute positioned 2795 50 865 run function pld:npcs/yao/guard
execute positioned 2775 49 860 run function pld:npcs/yao/guard
#区块卸载
forceload remove 2776 873 2793 858
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/176_53/pre 1t