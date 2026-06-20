#区块强加载
forceload add 3281 -125
#要做的事
data merge block 3280 19 -129 {Items:[]}
setblock 3280 19 -127 minecraft:command_block{Command:"function pld:system/rechoose/rechoose"} replace 

#区块卸载
forceload remove 3281 -125
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/zhan/zhan_end 1t