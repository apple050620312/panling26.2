#要做的事
data merge block 3176 146 108 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen19.text2"}','{"translate":"pl.sign.shen19.text3"}','{"translate":""}']}}
data merge block 3175 146 107 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen20.text2"}','{"translate":"pl.sign.shen20.text3"}','{"translate":""}']}}
data merge block 3174 146 108 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.shen20.text2"}','{"translate":"pl.sign.shen20.text3"}','{"translate":""}']}}
setblock 3173 143 106 air
setblock 3164 143 106 minecraft:command_block{Command:"execute as @p[distance=..4] run function pld:system/race_tp/race0_out"} replace 
setblock 3162 142 106 minecraft:repeating_command_block{Command:"tp @e[x=3162,y=145,z=106,distance=..3,type=!player] ~ ~-1000 ~"} replace 

setblock 3176 141 104 minecraft:command_block{Command:"function pld:npcs/shen/guard"} replace 


kill @e[type=villager,tag=!panling]
execute as @e[type=skeleton] run function pld:system/tp_and_kill_self
execute positioned 3176 141 104 run function pld:npcs/shen/guard
#区块卸载
forceload remove 3162 106 3178 106
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/shen/197_18/pre 1t