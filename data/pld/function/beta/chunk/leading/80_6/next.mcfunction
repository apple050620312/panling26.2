#要做的事
data merge block 1289 79 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian1.text1"}','{"translate":"pl.sign.leading_xian1.text2"}','{"translate":"pl.sign.leading_xian1.text3"}','{"translate":"pl.sign.leading_xian1.text4"}']}}
data merge block 1288 79 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian2.text1"}','{"translate":"pl.sign.leading_xian2.text2"}','{"translate":"pl.sign.leading_xian2.text3"}','{"translate":"pl.sign.leading_xian2.text4"}']}}
data merge block 1287 79 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian3.text1"}','{"translate":"pl.sign.leading_xian3.text2"}','{"translate":"pl.sign.leading_xian3.text3"}','{"translate":"pl.sign.leading_xian3.text4"}']}}
data merge block 1289 78 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian4.text1"}','{"translate":"pl.sign.leading_xian4.text2"}','{"translate":"pl.sign.leading_xian4.text3"}','{"translate":"pl.sign.leading_xian4.text4"}']}}
data merge block 1288 78 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian5.text1"}','{"translate":"pl.sign.leading_xian5.text2"}','{"translate":"pl.sign.leading_xian5.text3"}','{"translate":"pl.sign.leading_xian5.text4"}']}}
data merge block 1287 78 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian6.text1"}','{"translate":"pl.sign.leading_xian6.text2"}','{"translate":"pl.sign.leading_xian6.text3"}','{"translate":"pl.sign.leading_xian6.text4"}']}}
data merge block 1289 77 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian7.text1"}','{"translate":"pl.sign.leading_xian7.text2"}','{"translate":"pl.sign.leading_xian7.text3"}','{"translate":"pl.sign.leading_xian7.text4"}']}}
data merge block 1288 77 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian8.text1"}','{"translate":"pl.sign.leading_xian8.text2"}','{"translate":"pl.sign.leading_xian8.text3"}','{"translate":"pl.sign.leading_xian8.text4"}']}}
data merge block 1287 77 100 {front_text:{messages:['{"translate":"pl.sign.leading_xian9.text1"}','{"translate":"pl.sign.leading_xian9.text2"}','{"translate":"pl.sign.leading_xian9.text3"}','{"translate":"pl.sign.leading_xian9.text4"}']}}
data merge block 1284 78 97 {front_text:{messages:['{"translate":"pl.sign.leading_xian10.text1"}','{"translate":"pl.sign.leading_xian10.text2"}','{"translate":"pl.sign.leading_xian10.text3"}','{"translate":"pl.sign.leading_xian10.text4"}']}}
setblock 1285 74 97 minecraft:command_block[block_entity_data={Command:"function pld:npcs/select/leading_xian"}] replace 
kill @e[type=villager,tag=!panling]
execute positioned 1285 74 97 run function pld:npcs/select/leading_xian
#区块卸载
forceload remove 1290 105 1288 89
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/leading/85_0/pre 1t
