#区块强加载
forceload add 2884 -219 2855 -247

#要做的事
setblock 2886 30 -216 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room0/room0_0"} replace
setblock 2882 30 -212 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room0/room0_1"} replace
setblock 2878 30 -216 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room0/room0_2"} replace
setblock 2882 30 -220 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room0/room0_3"} replace
setblock 2872 30 -216 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room1/room1_0"} replace
setblock 2868 30 -212 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room1/room1_1"} replace
setblock 2864 30 -216 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room1/room1_2"} replace
setblock 2868 30 -220 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room1/room1_3"} replace
setblock 2858 30 -216 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room2/room2_0"} replace
setblock 2854 30 -212 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room2/room2_1"} replace
setblock 2850 30 -216 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room2/room2_2"} replace
setblock 2854 30 -220 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room2/room2_3"} replace
setblock 2858 30 -230 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room3/room3_0"} replace
setblock 2854 30 -226 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room3/room3_1"} replace
setblock 2850 30 -230 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room3/room3_2"} replace
setblock 2854 30 -234 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room3/room3_3"} replace
setblock 2858 30 -244 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room4/room4_0"} replace
setblock 2854 30 -240 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room4/room4_1"} replace
setblock 2850 30 -244 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room4/room4_2"} replace
setblock 2854 30 -248 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room4/room4_3"} replace
setblock 2872 30 -244 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room5/room5_0"} replace
setblock 2868 30 -240 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room5/room5_1"} replace
setblock 2864 30 -244 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room5/room5_2"} replace
setblock 2868 30 -248 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room5/room5_3"} replace

setblock 2886 30 -244 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room6/room6_0"} replace
setblock 2882 30 -240 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room6/room6_1"} replace
setblock 2878 30 -244 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room6/room6_2"} replace
setblock 2882 30 -248 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room6/room6_3"} replace

setblock 2886 30 -230 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room7/room7_0"} replace
setblock 2882 30 -226 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room7/room7_1"} replace
setblock 2878 30 -230 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room7/room7_2"} replace
setblock 2882 30 -234 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room7/room7_3"} replace

setblock 2872 30 -230 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room8/room8_0"} replace
setblock 2868 30 -226 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room8/room8_1"} replace
setblock 2864 30 -230 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room8/room8_2"} replace
setblock 2868 30 -234 minecraft:command_block{Command:"execute as @a[distance=..6] run function pld:test/zhan/heart/rooms/room8/room8_3"} replace




#区块卸载
forceload remove 2884 -219 2855 -247
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/test_zhan/182_-11 1t