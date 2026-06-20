#区块强加载
forceload add 1375 508 1377 521
#要做的事

data merge block 1377 39 521 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.honor_shop3.text2"}','{"translate":"pl.sign.honor_shop3.text3"}','{"translate":"pl.sign.honor_shop3.text4"}']}}
data merge block 1377 39 523 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.honor_shop4.text2"}','{"translate":"pl.sign.honor_shop4.text3"}','{"translate":""}']}}


data merge block 1375 39 508 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p [{\\"selector\\":\\"@p[distance=..5]\\",\\"color\\":\\"gold\\"},{\\"translate\\":\\"pl.spsign.honor_query.reads1\\",\\"color\\":\\"gold\\"},{\\"score\\":{\\"name\\": \\"@p\\",\\"objective\\": \\"honor\\",\\"color\\":\\"gold\\"}},{\\"translate\\":\\"pl.spsign.honor_query.reads2\\",\\"color\\":\\"gold\\"}]"}}','{"translate":"pl.spsign.honor_query.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1382 39 511 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange24.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange24.text2"}','{"translate":"pl.spsign.honor_exchange24.text3"}','{"translate":""}']}}

setblock 1363 36 507 minecraft:command_block[block_entity_data={Command:"execute as @e[x=1357,y=41,z=511,type=armor_stand,distance=..3,limit=1] at @s run particle crit ~ ~2 ~-0.9 0 0 0 0.2 10"}] replace



setblock 1352 66 529 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1352,y=66,z=527,distance=..5] run function pld:system/ex_sword/reward"}] replace

setblock 1382 37 511 minecraft:command_block[block_entity_data={Command:"execute as @p[x=1381,y=38,z=511,distance=..5] run function pld:system/honor_shop/item24"}] replace

setblock 1380 37 522 minecraft:command_block[block_entity_data={Command:"tp @p[distance=..3] 1356 91 525 180 ~"}] replace

data merge block 1377 36 522 {Lock:"1",Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:64b,tag:{display:{Name:'{"translate":"pl.item.name.silver"}'},id:"panling:silver_ticket"}},{Slot:1b,id:"minecraft:iron_ingot",Count:64b,tag:{display:{Name:'{"translate":"pl.item.name.silver"}'},id:"panling:silver_ticket"}},{Slot:2b,id:"minecraft:iron_ingot",Count:64b,tag:{display:{Name:'{"translate":"pl.item.name.silver"}'},id:"panling:silver_ticket"}},{Slot:3b,id:"minecraft:iron_ingot",Count:64b,tag:{display:{Name:'{"translate":"pl.item.name.silver"}'},id:"panling:silver_ticket"}},{Slot:4b,id:"minecraft:iron_ingot",Count:32b,tag:{display:{Name:'{"translate":"pl.item.name.silver"}'},id:"panling:silver_ticket"}}]}
setblock 1375 36 522 minecraft:repeating_command_block[block_entity_data={Command:"function pld:system/honor_shop/door"}] replace

#区块卸载
forceload remove 1375 508 1377 521
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/middle_end 1t