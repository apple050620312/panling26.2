
#要做的事

data merge block 332 34 -718 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai10.text2"}','{"translate":"pl.sign.penglai10.text3"}','{"translate":""}']}}
data merge block 334 34 -715 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.penglai11.text2"}','{"translate":"pl.sign.penglai10.text3"}','{"translate":""}']}}

setblock 335 31 -722 minecraft:repeating_command_block[block_entity_data={Command:"function pld:system/into_laojunroom"}] replace 
setblock 338 31 -722 minecraft:repeating_command_block[block_entity_data={Command:"function pld:system/into_laojunroom"}] replace 
setblock 340 28 -716 minecraft:command_block[block_entity_data={Command:"function pld:npcs/penglai/tong1a"}] replace 
setblock 337 12 -716 minecraft:command_block[block_entity_data={Command:"function pld:npcs/penglai/yh5"}] replace 
setblock 332 31 -718 minecraft:command_block[block_entity_data={Command:"execute as @p[x=332,y=33,z=-718,distance=..3] run function pld:system/into_laojundf"}] replace 

setblock 337 31 -722 minecraft:command_block[block_entity_data={Command:"/tp @p[x=336,y=33,z=-722,dx=1,dy=0,dz=1] 336 33 -724"}] replace 
setblock 336 31 -722 minecraft:command_block[block_entity_data={Command:"/tp @p[x=336,y=33,z=-722,dx=1,dy=0,dz=1] 336 33 -724"}] replace 

setblock 338 30 -721 minecraft:air replace
setblock 335 30 -721 minecraft:air replace


setblock 338 31 -724 minecraft:hopper replace
setblock 335 31 -724 minecraft:hopper replace

data merge block 333 32 -715 {Items:[]}
setblock 333 32 -713 minecraft:repeating_command_block[block_entity_data={Command:"function pld:system/truth/yao/5/check_in_room"}] replace 
fill 342 16 -718 342 17 -718 air
data merge block 339 16 -718 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.yh5.text2"}','{"translate":"pl.sign.yh5.text3"}','{"translate":""}']}}
setblock 339 17 -720 minecraft:command_block[block_entity_data={Command:"execute as @p[x=339,y=17,z=-718,distance=..5] run function pld:system/truth/yao/5/check_reward"}] replace 

kill @e[type=villager,tag=!panling]
execute positioned 340 28 -716 run function pld:npcs/penglai/tong1a
execute positioned 337 12 -716 run function pld:npcs/penglai/yh5
#区块卸载
forceload remove 337 -725 334 -716
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/penglai/22_-41/pre 1t