
#要做的事
data merge block 3205 86 866 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.ldp2"}','{"translate":""}','{"translate":""}']}}
data merge block 3211 81 861 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian7.text2"}','{"translate":"pl.sign.xian7.text3"}','{"translate":"pl.sign.xian7.text4"}']}}
data merge block 3205 90 842 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xian4.text2"}','{"translate":"pl.sign.xian4.text3"}','{"translate":""}']}}

data merge block 3203 85 859 {front_text:{messages:['{"translate":""}','{"text":"？？？","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.ldp_hidden.reads\\",\\"color\\":\\"gray\\"}"}}','{"translate":""}','{"translate":""}']}}

setblock 3206 83 864 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/xianmain4"}] replace 
setblock 3205 83 864 minecraft:command_block[custom_data={Command:"function pld:npcs/xian/xiantong4"}] replace

kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3206 83 864 run function pld:npcs/xian/xianmain4
execute positioned 3205 83 864 run function pld:npcs/xian/xiantong4
#区块卸载
forceload remove 3209 838 3207 872
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/xian/200_58/pre 1t