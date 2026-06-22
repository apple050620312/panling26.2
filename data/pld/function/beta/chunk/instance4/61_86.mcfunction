#区块强加载
forceload add 988 1383
#要做的事
fill 985 84 1378 983 84 1378 minecraft:command_block{Command:"/tp @p[distance=..3] 1193 81 1304"} replace
setblock 989 79 1403 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[998.0,84.0,1418.5],Tags:["instance4","ghast1"],Silent:1b,DropItem:0b,HurtEntities:0b,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,Spawncount:1,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s} destroy

#区块卸载
forceload remove 988 1383
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/instance4/61_95 1t