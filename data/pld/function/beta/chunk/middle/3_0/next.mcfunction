#要做的事
data merge block 56 7 28 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle25.text2"}','{"translate":"pl.sign.middle25.text3"}','{"translate":""}']}}

data merge block 53 8 24 {front_text:{messages:['{"translate":"pl.sign.middle26.text1"}','{"translate":"pl.sign.middle26.text2"}','{"translate":"pl.sign.middle26.text3"}','{"translate":""}']}}
data merge block 53 8 21 {front_text:{messages:['{"translate":"pl.sign.middle27.text1"}','{"translate":"pl.sign.middle27.text2"}','{"translate":"pl.sign.middle27.text3"}','{"translate":""}']}}
data merge block 59 12 19 {front_text:{messages:['{"translate":"pl.sign.middle28.text1"}','{"translate":"pl.sign.middle28.text2"}','{"translate":"pl.sign.middle28.text3"}','{"translate":""}']}}
data merge block 54 7 21 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle29.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 57 8 18 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.middle30.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 58 49 33 {front_text:{messages:['{"translate":""}','{"translate":"pl.frame.fhl"}','{"translate":""}','{"translate":""}']}}

setblock 54 2 27 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/te27"}] replace 
setblock 54 2 17 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat03"}] replace 
setblock 60 44 34 minecraft:command_block[block_entity_data={Command:"function pld:npcs/middle/chat53"}] replace 

setblock 56 4 32 minecraft:command_block[block_entity_data={Command:"playsound random.door_open ambient @p 56 48 34 3"}] replace 
setblock 57 4 32 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 56 48 34"}] replace 
setblock 57 45 32 minecraft:command_block[block_entity_data={Command:"playsound random.door_open ambient @p 57 7 30 3"}] replace 
setblock 56 45 32 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 57 7 30"}] replace 
clone 52 5 24 51 6 24 51 5 21
data merge block 53 6 24 {Items:[]} 
setblock 51 6 24 minecraft:repeating_command_block[block_entity_data={Command:"execute as @p[x=53,y=7,z=24,distance=..5] run function pld:system/racefriend/query"}] replace 
setblock 51 6 21 minecraft:repeating_command_block[block_entity_data={Command:"execute as @p[x=53,y=7,z=21,distance=..5] run function pld:system/racefriend/levelup"}] replace 
setblock 63 7 22 air
fill 54 17 23 53 17 23 air
setblock 51 4 25 air

setblock 50 42 32 minecraft:command_block[block_entity_data={Command:"particle witch 51.208 49 32.242 0.5 0.5 0.5 1 20"}] replace 
setblock 51 43 32 minecraft:command_block[block_entity_data={Command:'tellraw @a[x=50,y=48,z=31,distance=..5] {"translate":"pl.info.armor_stand7"}'}] replace 

fill 50 2 17 41 6 25 air
setblock 49 3 27 air

kill @e[type=villager,tag=!panling]
execute positioned 54 2 27 run function pld:npcs/middle/te27 
execute positioned 54 2 17 run function pld:npcs/middle/chat03
execute positioned 60 44 34 run function pld:npcs/middle/chat53
#区块卸载
forceload remove 54 7 54 38
forceload remove 44 21
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/3_5/pre 1t