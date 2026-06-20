
#要做的事

data merge block 1337 39 535 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p [{\\"selector\\":\\"@p[distance=..5]\\",\\"color\\":\\"gold\\"},{\\"translate\\":\\"pl.spsign.honor_query.reads1\\",\\"color\\":\\"gold\\"},{\\"score\\":{\\"name\\": \\"@p\\",\\"objective\\": \\"honor\\",\\"color\\":\\"gold\\"}},{\\"translate\\":\\"pl.spsign.honor_query.reads2\\",\\"color\\":\\"gold\\"}]"}}','{"translate":"pl.spsign.honor_query.text2"}','{"translate":""}','{"translate":""}']}}
data merge block 1332 39 535 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p [{\\"selector\\":\\"@p[distance=..5]\\",\\"color\\":\\"gold\\"},{\\"translate\\":\\"pl.spsign.honor_query.reads1\\",\\"color\\":\\"gold\\"},{\\"score\\":{\\"name\\": \\"@p\\",\\"objective\\": \\"honor\\",\\"color\\":\\"gold\\"}},{\\"translate\\":\\"pl.spsign.honor_query.reads2\\",\\"color\\":\\"gold\\"}]"}}','{"translate":"pl.spsign.honor_query.text2"}','{"translate":""}','{"translate":""}']}}

data merge block 1342 39 542 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange1.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange1.text2"}','{"translate":"pl.spsign.honor_exchange1.text3"}','{"translate":""}']}}
setblock 1342 37 542 minecraft:command_block{Command:"execute as @p[x=1342,y=38,z=541,distance=..5] run function pld:system/honor_shop/item1"} replace

data merge block 1340 39 542 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange2.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange2.text2"}','{"translate":"pl.spsign.honor_exchange2.text3"}','{"translate":""}']}}
setblock 1340 37 542 minecraft:command_block{Command:"execute as @p[x=1340,y=38,z=541,distance=..5] run function pld:system/honor_shop/item2"} replace

data merge block 1338 39 542 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange3.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange3.text2"}','{"translate":"pl.spsign.honor_exchange3.text3"}','{"translate":""}']}}
setblock 1338 37 542 minecraft:command_block{Command:"execute as @p[x=1338,y=38,z=541,distance=..5] run function pld:system/honor_shop/item3"} replace

data merge block 1336 39 542 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange4.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange4.text2"}','{"translate":"pl.spsign.honor_exchange4.text3"}','{"translate":""}']}}
setblock 1336 37 542 minecraft:command_block{Command:"execute as @p[x=1336,y=38,z=541,distance=..5] run function pld:system/honor_shop/item4"} replace

data merge block 1333 39 542 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange5.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange5.text2"}','{"translate":"pl.spsign.honor_exchange5.text3"}','{"translate":""}']}}
setblock 1333 37 542 minecraft:command_block{Command:"execute as @p[x=1333,y=38,z=541,distance=..5] run function pld:system/honor_shop/item5"} replace

data merge block 1331 39 542 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange6.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange6.text2"}','{"translate":"pl.spsign.honor_exchange6.text3"}','{"translate":""}']}}
setblock 1331 37 542 minecraft:command_block{Command:"execute as @p[x=1331,y=38,z=541,distance=..5] run function pld:system/honor_shop/item6"} replace

data merge block 1329 39 542 {front_text:{messages:['{"translate":"","clickEvent":{"action":"run_command","value":"/tellraw @p {\\"translate\\":\\"pl.spsign.honor_exchange7.reads\\"}"}}','{"translate":"pl.spsign.honor_exchange7.text2"}','{"translate":"pl.spsign.honor_exchange7.text3"}','{"translate":""}']}}
setblock 1329 37 542 minecraft:command_block{Command:"execute as @p[x=1329,y=38,z=541,distance=..5] run function pld:system/honor_shop/item7"} replace


setblock 1352 66 529 minecraft:command_block{Command:"execute as @p[x=1352,y=66,z=527,distance=..5] run function pld:system/ex_sword/reward"} replace 

setblock 1351 35 542 minecraft:command_block{Command:"/tp @a[distance=..4] 192 47 174 90 0"} replace 
setblock 1355 34 531 minecraft:command_block{Command:"function pld:npcs/middle/chat73"} replace

setblock 1352 91 531 minecraft:command_block{Command:'tellraw @a[x=1352,y=91,z=527,distance=..7] {"text":"","extra":[{"translate":"pl.info.www.1","clickEvent":{"action":"open_url","value":"http://pan-gu-continent.blogspot.tw"}}]}'} replace 
setblock 1351 90 530 minecraft:command_block{Command:'tellraw @a[x=1352,y=91,z=527,distance=..7] {"text":"","extra":[{"translate":"pl.info.www.2","clickEvent":{"action":"open_url","value":"https://www.facebook.com/pangu.continent"}}]}'} replace 

setblock 1354 89 529 minecraft:command_block{Command:"playsound block.piston.extend block @a[x=1370,y=92,z=526,distance=..20] 1354 92 530"} replace 
setblock 1355 89 530 minecraft:command_block{Command:"playsound block.piston.contract block @a[x=1370,y=92,z=526,distance=..20] 1354 92 530"} replace 
setblock 1357 89 530 minecraft:command_block{Command:"playsound block.piston.extend block @a[x=1370,y=92,z=526,distance=..20] 1354 92 530"} replace 
setblock 1359 89 530 minecraft:command_block{Command:"playsound block.piston.contract block @a[x=1370,y=92,z=526,distance=..20] 1354 92 530"} replace 

setblock 1359 90 531 minecraft:command_block{Command:"execute as @p[x=1354,y=91,z=525,distance=..7] run function pld:system/gashapon/main"} replace 
setblock 1359 90 532 air




kill @e[type=villager,tag=!panling]
execute positioned 1355 34 531 run function pld:npcs/middle/chat73
#区块卸载
forceload remove 1342 542 1351 542
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/middle/1_-1 1t