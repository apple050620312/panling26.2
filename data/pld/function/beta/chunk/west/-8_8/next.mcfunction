
#要做的事
data merge block -121 47 135 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.west14.text2"}','{"translate":"pl.sign.west14.text3"}','{"translate":""}']}}
setblock -119 41 138 minecraft:command_block[custom_data={Command:"function pld:npcs/west/teshen"}] replace 
setblock -124 23 135 minecraft:command_block[custom_data={Command:"function pld:npcs/west/te6"}] replace 
setblock -112 29 132 minecraft:command_block[custom_data={Command:"function pld:npcs/west/rh4"}] replace 
setblock -121 44 133 minecraft:command_block[custom_data={Command:"execute as @p[x=-121,y=46,z=135,distance=..1] run function pld:system/into_shennongdf"}] replace 
setblock -120 26 141 minecraft:command_block[custom_data={Command:"tp @p[x=-120,y=28,z=140,distance=..2] -122 47 135 ~ ~"}] replace 

data merge block -117 45 140 {Items:[]}
setblock -115 45 140 minecraft:repeating_command_block[custom_data={Command:"function pld:system/truth/ren/4/check_in_room"}] replace 

fill -115 34 136 -115 33 136 air


data merge block -111 33 136 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.rh5.text2"}','{"translate":"pl.sign.rh5.text3"}','{"translate":""}']}}

setblock -109 34 136 minecraft:command_block[custom_data={Command:"execute as @p[x=-111,y=34,z=136,distance=..5] run function pld:system/truth/ren/4/check_reward"}] replace 


kill @e[type=villager,tag=!panling]
execute positioned -119 41 138 run function pld:npcs/west/teshen
execute positioned -124 23 135 run function pld:npcs/west/te6 
execute positioned -112 29 132 run function pld:npcs/west/rh4
#区块卸载
forceload remove -122 139 -111 136
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-10_-12/pre 1t