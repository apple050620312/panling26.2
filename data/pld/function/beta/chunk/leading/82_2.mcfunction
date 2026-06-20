#区块强加载
forceload add 1315 39 
#要做的事
setblock 1315 72 42 air
data merge block 1314 64 44 {front_text:{messages:['{"translate":"pl.sign.select_job1.text1"}','{"translate":"pl.sign.select_job1.text2"}','{"translate":"pl.sign.select_job1.text3"}','{"translate":"pl.sign.select_job1.text4"}']}}
data merge block 1314 64 43 {front_text:{messages:['{"translate":"pl.sign.select_job2.text1"}','{"translate":"pl.sign.select_job2.text2"}','{"translate":"pl.sign.select_job2.text3"}','{"translate":"pl.sign.select_job2.text4"}']}}
data merge block 1314 64 42 {front_text:{messages:['{"translate":"pl.sign.select_job3.text1"}','{"translate":"pl.sign.select_job3.text2"}','{"translate":"pl.sign.select_job3.text3"}','{"translate":"pl.sign.select_job3.text4"}']}}
data merge block 1314 64 41 {front_text:{messages:['{"translate":"pl.sign.select_job4.text1"}','{"translate":"pl.sign.select_job4.text2"}','{"translate":"pl.sign.select_job4.text3"}','{"translate":"pl.sign.select_job4.text4"}']}}
data merge block 1314 64 40 {front_text:{messages:['{"translate":"pl.sign.select_job5.text1"}','{"translate":"pl.sign.select_job5.text2"}','{"translate":"pl.sign.select_job5.text3"}','{"translate":"pl.sign.select_job5.text4"}']}}
data merge block 1324 64 40 {front_text:{messages:['{"text":""}','{"translate":"pl.job0"}','{"translate":"pl.sign.job_lesson.text3"}','{"text":""}']}}
data merge block 1324 64 42 {front_text:{messages:['{"text":""}','{"translate":"pl.job1"}','{"translate":"pl.sign.job_lesson.text3"}','{"text":""}']}}
data merge block 1324 64 44 {front_text:{messages:['{"text":""}','{"translate":"pl.job2"}','{"translate":"pl.sign.job_lesson.text3"}','{"text":""}']}}
setblock 1324 61 40 minecraft:command_block[custom_data={Command:"execute as @p[x=1324,y=63,z=40,distance=..2] run function pld:selections/job/select_job0"}] replace 
setblock 1324 61 42 minecraft:command_block[custom_data={Command:"execute as @p[x=1324,y=63,z=42,distance=..2] run function pld:selections/job/select_job1"}] replace 
setblock 1324 61 44 minecraft:command_block[custom_data={Command:"execute as @p[x=1324,y=63,z=44,distance=..2] run function pld:selections/job/select_job2"}] replace 

#区块卸载
forceload remove 1315 39 
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count

#链接下一个chunk
schedule function pld:beta/chunk/leading/82_28 1t