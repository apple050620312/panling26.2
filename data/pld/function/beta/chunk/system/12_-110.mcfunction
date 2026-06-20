#区块强加载
forceload add 205 -1755
#要做的事
data merge block 205 55 -1758 {front_text:{messages:['{"translate":"pl.sign.rechoose1.text1"}','{"translate":"pl.sign.rechoose1.text2"}','{"translate":"pl.sign.rechoose1.text3"}','{"translate":"pl.sign.rechoose1.text4"}']}}
data merge block 205 55 -1754 {front_text:{messages:['{"translate":"pl.sign.rechoose2.text1"}','{"translate":"pl.sign.rechoose2.text2"}','{"translate":"pl.sign.rechoose2.text3"}','{"translate":"pl.sign.rechoose2.text4"}']}}
data merge block 205 54 -1754 {front_text:{messages:['{"translate":"pl.sign.rechoose3.text1"}','{"translate":"pl.sign.rechoose3.text2"}','{"translate":"pl.sign.rechoose3.text3"}','{"translate":"pl.sign.rechoose3.text4"}']}}
setblock 205 52 -1759 minecraft:command_block[block_entity_data={Command:"execute as @p[x=205,y=54,z=-1759,distance=..7] run function pld:system/rechoose/rechoose_back"}] replace 
setblock 205 52 -1753 minecraft:command_block[block_entity_data={Command:"execute as @p[x=205,y=54,z=-1753,distance=..7] run function pld:system/rechoose/rechoose_agree"}] replace 

#区块卸载
forceload remove 205 -1755
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/12_-111 1t