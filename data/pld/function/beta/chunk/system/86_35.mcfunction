##区块强加载
#forceload add 1391 571 1367 583
##要做的事
#data merge block 1391 42 572 {Text1:'{"translate":"pl.sign.training_job_2.text1"}',Text2:'{"translate":"pl.sign.training_job_2.text2"}',Text3:'{"translate":"pl.sign.training_job_2.text3"}',Text4:'{"translate":"pl.sign.training_job_2.text4"}'}
#data merge block 1391 42 571 {Text2:'{"translate":"pl.sign.training_job_3.text2"}',Text3:'{"translate":"pl.sign.training_job_3.text3"}'}
#data merge block 1389 42 574 {Text2:'{"translate":"pl.sign.training_job_4.text2"}',Text3:'{"translate":"pl.sign.training_job_4.text3"}'}
#data merge block 1386 42 574 {Text2:'{"translate":"pl.sign.training_job_5.text2"}',Text3:'{"translate":"pl.sign.training_job_5.text3"}'}
#data merge block 1383 42 569 {Text2:'{"translate":"pl.sign.training_job_6.text2"}',Text3:'{"translate":"pl.sign.training_job_6.text3"}'}
#
#
#setblock 1389 38 574 minecraft:command_block{Command:"effect give @a[distance=..3] minecraft:instant_health 1 10 true"} replace
#setblock 1385 42 576 minecraft:command_block{Command:"function pld:selections/training/training_skeleton"} replace
#setblock 1382 39 568 minecraft:command_block{Command:"tp @e[type=skeleton,distance=..3] ~ -1000 ~"} replace
#
#
#
#
##区块卸载
#forceload remove 1391 571 1367 583
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/system/87_25 1t