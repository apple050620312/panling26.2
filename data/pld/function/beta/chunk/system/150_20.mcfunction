##炼丹室
##区块强加载
#forceload add 2407 330 2439 348
forceload add 2403 367 2438 314
forceload add 2449 358
forceload add 2393 415 2415 383
##要做的事
setblock 2415 41 383 air
fill 2405 52 397 2405 52 391 air
fill 2413 54 402 2393 54 415 air
fill 2403 46 367 2439 46 353 air
fill 2443 42 352 2452 48 367 air
fill 2438 46 314 2402 46 329 air
#data merge block 2412 46 346 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.lds1.text2"}','{"translate":"pl.sign.lds1.text3"}','{"translate":""}']}}
#data merge block 2414 45 347 {Text1:'{"translate":"pl.sign.lds2.text1"}',Text2:'{"translate":"pl.sign.lds2.text2"}',Text3:'{"translate":"pl.sign.lds2.text3"}'}
#data merge block 2412 46 335 {Text2:'{"translate":"pl.sign.lds1.text2"}',Text3:'{"translate":"pl.sign.lds1.text3"}'}
#data merge block 2414 45 334 {Text1:'{"translate":"pl.sign.lds2.text1"}',Text2:'{"translate":"pl.sign.lds2.text2"}',Text3:'{"translate":"pl.sign.lds2.text3"}'}
#data merge block 2430 46 335 {Text2:'{"translate":"pl.sign.lds1.text2"}',Text3:'{"translate":"pl.sign.lds1.text3"}'}
#data merge block 2428 45 334 {Text1:'{"translate":"pl.sign.lds2.text1"}',Text2:'{"translate":"pl.sign.lds2.text2"}',Text3:'{"translate":"pl.sign.lds2.text3"}'}
#data merge block 2430 46 346 {Text2:'{"translate":"pl.sign.lds1.text2"}',Text3:'{"translate":"pl.sign.lds1.text3"}'}
#data merge block 2428 45 347 {Text1:'{"translate":"pl.sign.lds2.text1"}',Text2:'{"translate":"pl.sign.lds2.text2"}',Text3:'{"translate":"pl.sign.lds2.text3"}'}
#setblock 2432 46 347 minecraft:command_block[block_entity_data={Command:"function pld:system/ld/ldmain"}] replace 
#setblock 2432 46 334 minecraft:command_block[block_entity_data={Command:"function pld:system/ld/ldmain"}] replace 
#setblock 2410 46 347 minecraft:command_block[block_entity_data={Command:"function pld:system/ld/ldmain"}] replace 
#setblock 2410 46 334 minecraft:command_block[block_entity_data={Command:"function pld:system/ld/ldmain"}] replace 
#setblock 2429 43 340 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 252 49 24"}] replace 
#setblock 2429 43 341 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 252 49 24"}] replace 
#data merge block 2429 45 334 {CustomName:'{"translate":"pl.name.ldl"}'}
#data merge block 2429 45 347 {CustomName:'{"translate":"pl.name.ldl"}'}
#data merge block 2413 45 347 {CustomName:'{"translate":"pl.name.ldl"}'}
#data merge block 2413 45 334 {CustomName:'{"translate":"pl.name.ldl"}'}
##区块卸载
#forceload remove 2407 330 2439 348
forceload remove 2403 367 2438 314
forceload remove 2449 358
forceload remove 2393 415 2415 383
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/157_31 1t
