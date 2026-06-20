#要做的事
setblock 2810 44 846 minecraft:command_block[custom_data={Command:"function pld:system/rechoose/rechoose"}] replace 
data merge block 2812 44 846 {Items:[]}
setblock 2822 40 844 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/chat2"}] replace 

setblock 2802 49 851 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/guard"}] replace 
setblock 2827 42 850 minecraft:command_block[custom_data={Command:"function pld:npcs/yao/guard"}] replace 

data merge block 2818 46 856 {front_text:{messages:['{"translate":"pl.sign.yao2.text2"}','{"translate":""}','{"translate":""}','{"translate":""}']}}
data merge block 2821 46 851 {front_text:{messages:['{"translate":"pl.sign.yao3.text1"}','{"translate":"pl.sign.yao1.text3"}','{"translate":""}','{"translate":"pl.sign.yao3.text4"}']}}
data merge block 2819 46 846 {front_text:{messages:['{"translate":"pl.sign.yao2.text2"}','{"translate":""}','{"translate":""}','{"translate":""}']}}
data merge block 2812 46 846 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.jitan.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 2802 53 860 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yao4.text2"}','{"translate":"pl.sign.yao1.text3"}','{"translate":""}']}}
data merge block 2814 46 855 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.get_menu.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.get_menu.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.get_menu.text3"}','{"translate":""}']}}

setblock 2814 44 856 minecraft:command_block[custom_data={Command:"execute as @p[x=2814,y=45,z=855,distance=..5] run function pld:system/menubook/update/main"}] destroy 
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 2822 40 844 run function pld:npcs/yao/chat2
execute positioned 2802 49 851 run function pld:npcs/yao/guard
execute positioned 2827 42 850 run function pld:npcs/yao/guard
#区块卸载
forceload remove 2820 856 2810 845
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/yao/177_52/pre 1t