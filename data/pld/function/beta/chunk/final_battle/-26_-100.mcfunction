#区块强加载 -26_-100 -26_-101
forceload add -412 -1599 -405 -1604
#要做的事
setblock -412 193 -1599 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-411.5,199.5,-1598.5],Tags:["final_battle","skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -407 194 -1594 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-406.5,200.5,-1593.5],Tags:["final_battle","wither_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -407 194 -1598 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-406.5,200.5,-1597.5],Tags:["final_battle","cave_spider"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -404 194 -1600 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-403.5,200.5,-1599.5],Tags:["final_battle","endermite"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -405 193 -1604 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-404.5,199.5,-1603.5],Tags:["final_battle","blaze"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy
setblock -401 193 -1604 minecraft:spawner[custom_data={SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-400.5,199.5,-1603.5],Tags:["final_battle","creeper"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:800s,MinSpawnDelay:200s,SpawnRange:4s,Delay:10s}] destroy


#区块卸载
forceload remove -412 -1599 -405 -1604
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#tellraw yl_jiu_qiu [{"text":"-26 -100: "},{"score":{"name":"#system","objective": "alreadyload"}}]
#链接下一个chunk
schedule function pld:beta/chunk/final_battle/final_battle_end 1t