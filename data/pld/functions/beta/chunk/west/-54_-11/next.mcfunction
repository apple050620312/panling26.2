
#要做的事
setblock -852 87 -203 minecraft:command_block{Command:"function pld:npcs/west/xe4"} replace 
data merge block -851 92 -209 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xe3.text2"}','{"translate":""}','{"translate":""}']}}
data merge block -849 92 -174 {front_text:{messages:['{"translate":"pl.spsign.xe.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.xe1.reads\\"}"}}','{"translate":""}','{"translate":""}','{"translate":""}']}}
data merge block -853 93 -178 {front_text:{messages:['{"translate":"pl.spsign.xe.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.xe2.reads\\"}"}}','{"translate":""}','{"translate":""}','{"translate":""}']}}
data merge block -849 93 -182 {front_text:{messages:['{"translate":"pl.spsign.xe.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.xe3.reads\\"}"}}','{"translate":""}','{"translate":""}','{"translate":""}']}}
data merge block -853 93 -185 {front_text:{messages:['{"translate":"pl.spsign.xe.text1","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.xe4.reads\\"}"}}','{"translate":""}','{"translate":""}','{"translate":""}']}}
setblock -851 91 -211 minecraft:command_block{Command:"execute if entity @e[x=-858,y=90,z=-210,dx=14,dy=6,dz=14,type=cow] run function pld:system/ex_xian/cow_arrive"} replace 
kill @e[type=villager,tag=!panling]
execute as @e[type=cow] run function pld:system/tp_and_kill_self
execute positioned -852 87 -203 run function pld:npcs/west/xe4
#区块卸载
forceload remove -851 -165 -849 -212
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/137_-52/pre 1t