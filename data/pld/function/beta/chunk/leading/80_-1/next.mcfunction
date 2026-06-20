#要做的事
data merge block 1288 78 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren1.text1"}','{"translate":"pl.sign.leading_ren1.text2"}','{"translate":"pl.sign.leading_ren1.text3"}','{"translate":"pl.sign.leading_ren1.text4"}']}}
data merge block 1289 78 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren2.text1"}','{"translate":"pl.sign.leading_ren2.text2"}','{"translate":"pl.sign.leading_ren2.text3"}','{"translate":"pl.sign.leading_ren2.text4"}']}}
data merge block 1290 78 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren3.text1"}','{"translate":"pl.sign.leading_ren3.text2"}','{"translate":"pl.sign.leading_ren3.text3"}','{"translate":"pl.sign.leading_ren3.text4"}']}}
data merge block 1288 77 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren4.text1"}','{"translate":"pl.sign.leading_ren4.text2"}','{"translate":"pl.sign.leading_ren4.text3"}','{"translate":"pl.sign.leading_ren4.text4"}']}}
data merge block 1289 77 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren5.text1"}','{"translate":"pl.sign.leading_ren5.text2"}','{"translate":"pl.sign.leading_ren5.text3"}','{"translate":"pl.sign.leading_ren5.text4"}']}}
data merge block 1290 77 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren6.text1"}','{"translate":"pl.sign.leading_ren6.text2"}','{"translate":"pl.sign.leading_ren6.text3"}','{"translate":"pl.sign.leading_ren6.text4"}']}}
data merge block 1288 76 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren7.text1"}','{"translate":"pl.sign.leading_ren7.text2"}','{"translate":"pl.sign.leading_ren7.text3"}','{"translate":"pl.sign.leading_ren7.text4"}']}}
data merge block 1289 76 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren8.text1"}','{"translate":"pl.sign.leading_ren8.text2"}','{"translate":"pl.sign.leading_ren8.text3"}','{"translate":"pl.sign.leading_ren8.text4"}']}}
data merge block 1290 76 -11 {front_text:{messages:['{"translate":"pl.sign.leading_ren9.text1"}','{"translate":"pl.sign.leading_ren9.text2"}','{"translate":"pl.sign.leading_ren9.text3"}','{"translate":"pl.sign.leading_ren9.text4"}']}}
data merge block 1284 79 -9 {front_text:{messages:['{"translate":"pl.sign.leading_ren10.text1"}','{"translate":"pl.sign.leading_ren10.text2"}','{"translate":"pl.sign.leading_ren10.text3"}','{"translate":"pl.sign.leading_ren10.text4"}']}}
setblock 1282 76 -8 minecraft:command_block[custom_data={Command:"execute as @p[x=1282,y=78,z=-8,distance=..2] run function pld:selections/race/select4"}] replace 
setblock 1284 73 -5 minecraft:command_block[custom_data={Command:"function pld:npcs/select/leading_ren"}] replace
kill @e[type=villager,tag=!panling]
execute positioned 1284 73 -5 run function pld:npcs/select/leading_ren
#区块卸载
forceload remove 1288 -8 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/80_6/pre 1t