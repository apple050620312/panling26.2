#要做的事
data merge block 1671 138 132 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.get_menu.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.get_menu.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.get_menu.text3"}','{"translate":""}']}}
setblock 1670 136 132 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1671,y=137,z=132,distance=..5] run function pld:system/menubook/update/main"}] destroy

data merge block 1668 138 141 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.jitan.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1670 137 134 {front_text:{messages:['{"translate":"pl.sign.ren1.text1"}','{"translate":"pl.sign.ren1.text2"}','{"translate":"pl.sign.ren1.text3"}','{"translate":"pl.sign.ren1.text4"}']}}
data merge block 1668 138 137 {front_text:{messages:['{"translate":"pl.sign.ren2.text1"}','{"translate":"pl.sign.ren2.text2"}','{"translate":"pl.sign.ren2.text3"}','{"translate":"pl.sign.ren2.text4"}']}}
data merge block 1668 150 125 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren6.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1675 150 114 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren6.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1678 150 114 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren12.text2"}','{"translate":""}','{"translate":""}']}}

setblock 1666 136 141 minecraft:command_block[block_entity_data={Command:"function pld:system/rechoose/rechoose"}] replace

setblock 1667 143 127 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/chat1"}] replace 
setblock 1664 142 131 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/chat2"}] replace 
setblock 1677 131 138 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/renmain1"}] replace 
setblock 1670 144 126 minecraft:command_block[block_entity_data={Command:"function pld:npcs/ren/guard"}] replace 
data merge block 1668 136 141 {Items:[]}
kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1670 144 126 run function pld:npcs/ren/guard
execute positioned 1667 143 127 run function pld:npcs/ren/chat1
execute positioned 1664 142 131 run function pld:npcs/ren/chat2
execute positioned 1677 131 138 run function pld:npcs/ren/renmain1

#区块卸载
forceload remove 1677 138 1668 125
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/105_6/pre 1t