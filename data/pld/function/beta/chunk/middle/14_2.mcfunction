#区块强加载
forceload add 230 39 215 24
forceload add 220 31
#要做的事
data merge block 229 50 37 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 220 50 31 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle2.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 220 50 43 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle3.text2"}','{"translate":""}','{"translate":""}']}}


setblock 220 46 41 minecraft:command_block[custom_data={Command:"execute as @p[x=220,y=49,z=43,distance=..3] run function pld:system/race_tp/race2"}] replace 
setblock 220 46 43 minecraft:repeating_command_block[custom_data={Command:"tp @e[x=220,y=49,z=43,distance=..3,type=villager] ~ ~-1000 ~"}] replace 

setblock 220 46 33 minecraft:command_block[custom_data={Command:"execute as @p[x=220,y=49,z=31,distance=..3] run function pld:system/race_tp/race4"}] replace 
setblock 220 46 31 minecraft:repeating_command_block[custom_data={Command:"tp @e[x=220,y=49,z=31,distance=..3,type=villager] ~ ~-1000 ~"}] replace 

setblock 227 46 37 minecraft:command_block[custom_data={Command:"execute as @p[x=229,y=49,z=37,distance=..3] run function pld:system/race_tp/race0"}] replace 
setblock 229 46 37 minecraft:repeating_command_block[custom_data={Command:"tp @e[x=229,y=49,z=37,distance=..3,type=villager] ~ ~-1000 ~"}] replace 

#区块卸载
forceload remove 230 39 215 24
forceload remove 220 31
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/15_-15 1t