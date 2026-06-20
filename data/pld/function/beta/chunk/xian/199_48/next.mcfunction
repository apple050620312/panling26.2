
#要做的事
data merge block 3185 120 780 {front_text:{messages:['{"translate":"pl.sign.xian1.text1"}','{"translate":"pl.sign.xian1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3185 120 783 {front_text:{messages:['{"translate":"pl.sign.xian1.text1"}','{"translate":"pl.sign.xian1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 3189 105 776 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.jitan.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 3193 103 782 {front_text:{messages:['{"translate":"pl.sign.xian2.text1"}','{"translate":"pl.sign.xian2.text2"}','{"translate":"pl.sign.xian2.text3"}','{"translate":""}']}}
data merge block 3188 102 789 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.get_menu.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.get_menu.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.get_menu.text3"}','{"translate":""}']}}

setblock 3187 100 789 minecraft:command_block[block_entity_data={Command:"execute as @p[x=3188,y=101,z=789,distance=..5] run function pld:system/menubook/update/main"}] destroy 

setblock 3190 101 783 air
fill 3191 100 782 3191 99 782 minecraft:stone
setblock 3190 100 782 minecraft:command_block[block_entity_data={Command:"function pld:npcs/xian/xianmain1"}] replace 
setblock 3187 103 776 minecraft:command_block[block_entity_data={Command:"function pld:system/rechoose/rechoose"}] replace 
data merge block 3189 103 776 {Items:[]}

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3190 100 782 run function pld:npcs/xian/xianmain1
#区块卸载
forceload remove 3190 778 3190 790
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/199_50/pre 1t