##区块强加载
#forceload add 2540 505 2523 504
forceload add 2551 490 2550 517
forceload add 2513 515 2500 488
forceload add 2531 487
##要做的事
fill 2545 56 517 2558 56 488 air
fill 2513 56 517 2500 56 488 air
fill 2531 54 487 2519 58 492 air
#data merge block 2536 56 506 {Text2:'{"translate":"pl.sign.dz.text2"}',Text3:'{"translate":"pl.sign.dz.text3"}'}
#data merge block 2524 56 506 {Text2:'{"translate":"pl.sign.dz.text2"}',Text3:'{"translate":"pl.sign.dz.text3"}'}
#setblock 2523 56 508 minecraft:command_block[block_entity_data={Command:"function pld:system/dz/dzmain"}] replace 
#setblock 2537 56 508 minecraft:command_block[block_entity_data={Command:"function pld:system/dz/dzmain"}] replace 
#setblock 2530 52 507 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..5] 75 46 142 -90 ~"}] replace 
#
##区块卸载
#forceload remove 2540 505 2523 504
forceload remove 2551 490 2550 517
forceload remove 2513 515 2500 488
forceload remove 2531 487
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/system_end 1t