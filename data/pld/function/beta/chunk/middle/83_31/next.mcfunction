
#要做的事
data merge block 1351 39 511 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.honor_shop1.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1351 38 496 {front_text:{messages:['{"translate":"pl.sign.honor_shop2.text1"}','{"translate":"pl.sign.honor_shop2.text2"}','{"translate":"pl.sign.honor_shop2.text3"}','{"translate":""}']}}

data merge block 1332 39 498 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p [{\\"selector\\":\\"@p[distance=..5]\\",\\"color\\":\\"gold\\"},{\\"translate\\":\\"pl.spsign.honor_query.reads1\\",\\"color\\":\\"gold\\"},{\\"score\\":{\\"name\\": \\"@p\\",\\"objective\\": \\"honor\\",\\"color\\":\\"gold\\"}},{\\"translate\\":\\"pl.spsign.honor_query.reads2\\",\\"color\\":\\"gold\\"}]"}}','{"translate":"pl.spsign.honor_query.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1337 39 498 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p [{\\"selector\\":\\"@p[distance=..5]\\",\\"color\\":\\"gold\\"},{\\"translate\\":\\"pl.spsign.honor_query.reads1\\",\\"color\\":\\"gold\\"},{\\"score\\":{\\"name\\": \\"@p\\",\\"objective\\": \\"honor\\",\\"color\\":\\"gold\\"}},{\\"translate\\":\\"pl.spsign.honor_query.reads2\\",\\"color\\":\\"gold\\"}]"}}','{"translate":"pl.spsign.honor_query.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 1329 39 491 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange22.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange22.text2"}','{"translate":"pl.spsign.honor_exchange22.text3"}','{"translate":""}']}}
setblock 1329 37 491 minecraft:command_block[custom_data={Command:"execute as @p[x=1329,y=38,z=492,distance=..5] run function pld:system/honor_shop/item22"}] replace
data merge block 1340 39 491 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange23.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange23.text2"}','{"translate":"pl.spsign.honor_exchange23.text3"}','{"translate":""}']}}
setblock 1340 37 491 minecraft:command_block[custom_data={Command:"execute as @p[x=1340,y=38,z=492,distance=..5] run function pld:system/honor_shop/item23"}] replace


data merge block 1348 39 495 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant1.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant1.text2"}','{"translate":"pl.spsign.honor_enchant1.text3"}','{"translate":""}']}}
setblock 1346 38 495 minecraft:command_block[custom_data={Command:"execute as @p[x=1348,y=38,z=495,distance=..5] run function pld:system/honor_shop/enchant1/check"}] destroy
data merge block 1348 39 493 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant2.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant2.text2"}','{"translate":"pl.spsign.honor_enchant2.text3"}','{"translate":""}']}}
setblock 1346 38 493 minecraft:command_block[custom_data={Command:"execute as @p[x=1348,y=38,z=493,distance=..5] run function pld:system/honor_shop/enchant2/check"}] destroy
data merge block 1349 39 491 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant3.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant3.text2"}','{"translate":"pl.spsign.honor_enchant3.text3"}','{"translate":""}']}}
setblock 1349 38 489 minecraft:command_block[custom_data={Command:"execute as @p[x=1349,y=38,z=491,distance=..5] run function pld:system/honor_shop/enchant3/check"}] destroy
data merge block 1351 39 491 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant4.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant4.text2"}','{"translate":"pl.spsign.honor_enchant4.text3"}','{"translate":""}']}}
setblock 1351 38 489 minecraft:command_block[custom_data={Command:"execute as @p[x=1351,y=38,z=491,distance=..5] run function pld:system/honor_shop/enchant4/check"}] destroy
data merge block 1353 39 491 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant5.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant5.text2"}','{"translate":"pl.spsign.honor_enchant5.text3"}','{"translate":""}']}}
setblock 1353 38 489 minecraft:command_block[custom_data={Command:"execute as @p[x=1353,y=38,z=491,distance=..5] run function pld:system/honor_shop/enchant5/check"}] destroy
data merge block 1354 39 493 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant6.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant6.text2"}','{"translate":"pl.spsign.honor_enchant6.text3"}','{"translate":""}']}}
setblock 1356 38 493 minecraft:command_block[custom_data={Command:"execute as @p[x=1354,y=38,z=493,distance=..5] run function pld:system/honor_shop/enchant6/check"}] destroy
data merge block 1354 39 495 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant7.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant7.text2"}','{"translate":"pl.spsign.honor_enchant7.text3"}','{"translate":""}']}}
setblock 1356 38 495 minecraft:command_block[custom_data={Command:"execute as @p[x=1354,y=38,z=495,distance=..5] run function pld:system/honor_shop/enchant7/check"}] destroy



data merge block 1351 39 495 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_enchant.reads\\"}"}}','{"translate":"pl.spsign.honor_enchant.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 1351 39 494 {CustomName:'{"translate":"pl.info.honor_enchant_hopper"}'}
setblock 1343 35 506 minecraft:command_block[custom_data={Command:"execute as @e[x=1345,y=42,z=511,type=armor_stand,distance=..3,limit=1] at @s run particle flame ~0.7 ~2.0 ~0.05 0 0 0 0 10"}] replace

setblock 1353 34 505 minecraft:command_block[custom_data={Command:"function pld:npcs/middle/ex_sword1"}] replace 
data merge block 1354 36 507 {Items:[]}
setblock 1351 33 507 air
setblock 1352 36 507 minecraft:repeating_command_block[custom_data={Command:"execute as @p[x=1354,y=38,z=507,distance=..3] run function pld:system/ex_sword/check"}] replace 

setblock 1346 35 497 minecraft:command_block[custom_data={Command:"particle enchant ~ ~5 ~ 0.2 0.2 0.2 0.0 20"}] replace
setblock 1351 35 494 minecraft:command_block[custom_data={Command:"particle minecraft:happy_villager ~ ~5 ~-1 3 3 3 1 50"}] replace


kill @e[type=villager,tag=!panling]
execute positioned 1353 34 505 run function pld:npcs/middle/ex_sword1
#区块卸载
forceload remove 1332 498 1351 495
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/84_32/pre 1t