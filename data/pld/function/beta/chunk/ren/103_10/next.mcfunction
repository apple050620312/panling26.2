# 102 10  103 10  104 10  105 10
#要做的事
data merge block 1657 153 165 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren6.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1656 154 168 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren14.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1657 154 168 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren15.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1671 150 168 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren16.text2"}','{"translate":"pl.sign.ren16.text3"}','{"translate":""}']}}
data merge block 1688 145 168 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.ren15.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 1653 158 173 {front_text:{messages:['{"translate":""}','{"text":"？？？","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ldp_hidden.reads\\",\\"color\\":\\"gray\\"}"}}','{"translate":""}','{"translate":""}']}}

setblock 1654 150 176 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/renmain4"}] replace 
setblock 1655 150 176 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/rentong4"}] replace 
setblock 1664 145 171 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/chat11"}] replace 
setblock 1692 152 166 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/chat3"}] replace 
setblock 1648 150 166 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/guard"}] replace 
setblock 1687 140 169 minecraft:command_block[custom_data={Command:"function pld:npcs/ren/guard"}] replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 1654 150 176 run function pld:npcs/ren/renmain4
execute positioned 1655 150 176 run function pld:npcs/ren/rentong4
execute positioned 1664 145 171 run function pld:npcs/ren/chat11
execute positioned 1692 152 166 run function pld:npcs/ren/chat3 

execute positioned 1648 150 166 run function pld:npcs/ren/guard
execute positioned 1687 140 169 run function pld:npcs/ren/guard

#区块卸载
forceload remove 1640 166 1689 168
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/ren/103_11/pre 1t