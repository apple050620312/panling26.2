
#要做的事
data merge block 124 60 -147 {front_text:{messages:['{"translate":""}','{"translate":"pl.spsign.middle1.text2","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.middle1.reads\\",\\"color\\":\\"gold\\"}"}}','{"translate":"pl.spsign.middle1.text3"}','{"translate":""}']}}

setblock 124 58 -148 minecraft:command_block{Command:"execute as @p[x=124,y=59,z=-147,distance=..5] run function pld:pvp/1/pre/sign/sign_up_def"} replace
setblock 120 54 -146 minecraft:command_block{Command:"function pld:npcs/middle/pvp1_def"} replace

kill @e[type=villager,tag=!panling]
execute positioned 120 54 -146 run function pld:npcs/middle/pvp1_def
#区块卸载
forceload remove 124 -147
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/7_7/pre 1t