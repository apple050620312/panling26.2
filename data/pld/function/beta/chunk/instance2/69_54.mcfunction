#区块强加载
forceload add 1107 877 1069 914
#要做的事
setblock 1068 16 910 fire replace
setblock 1066 15 894 fire replace
setblock 1110 16 913 fire replace
setblock 1113 16 902 fire replace
setblock 1111 18 891 minecraft:glowstone replace
setblock 1111 20 883 minecraft:glowstone replace
setblock 1105 15 877 minecraft:glowstone replace
setblock 1080 17 874 minecraft:glowstone replace
setblock 1073 20 880 minecraft:glowstone replace
setblock 1079 14 884 minecraft:glowstone replace
setblock 1079 14 893 minecraft:glowstone replace
setblock 1099 14 895 minecraft:glowstone replace
setblock 1099 14 884 minecraft:glowstone replace
setblock 1090 14 884 minecraft:glowstone replace
setblock 1088 14 904 minecraft:glowstone replace
setblock 1079 14 904 minecraft:glowstone replace
setblock 1099 14 904 minecraft:glowstone replace

#区块卸载
forceload remove 1107 877 1069 914
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance2/71_56 1t