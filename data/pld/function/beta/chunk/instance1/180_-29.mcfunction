#区块强加载 180 -29 
forceload add 2887 -458 2890 -425
#要做的事
fill 2889 21 -435 2888 21 -434 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
fill 2886 21 -435 2886 21 -428 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
fill 2888 21 -432 2887 21 -430 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
fill 2889 21 -428 2889 21 -421 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
fill 2886 21 -423 2887 21 -424 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
fill 2888 21 -421 2887 21 -421 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
fill 2888 21 -428 2888 21 -426 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
setblock 2887 21 -426 command_block{Command:"/tp @p[distance=..3] 2888 23 -438"} replace
setblock 2893 20 -457 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[2889.0,24.0,-447.0],Tags:["instance1","skeleton"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove 2887 -458 2890 -425
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance1/instance1_end 1t