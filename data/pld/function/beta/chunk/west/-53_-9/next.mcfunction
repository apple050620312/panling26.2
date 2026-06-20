
#要做的事
setblock -841 141 -143 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-840.5,147.0,-142.5],Tags:["west","zombie"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy
setblock -835 142 -131 minecraft:spawner{SpawnPotentials:[{data:{entity:{id:"minecraft:falling_block",NoGravity:1,Pos:[-834.5,148.0,-130.5],Tags:["west","boss_wither_skeleton"],Silent:1,DropItem:0,HurtEntities:0,BlockState:{Name:"barrier"}}},weight:1}],MaxNearbyEntities:2s,RequiredPlayerRange:18s,SpawnCount:1s,MaxSpawnDelay:1000s,MinSpawnDelay:400s,SpawnRange:4s,Delay:10s} destroy

setblock -845 129 -139 minecraft:command_block{Command:"function pld:npcs/west/xe2"} replace 
setblock -848 116 -139 minecraft:command_block{Command:"function pld:npcs/west/xe3"} replace 
data merge block -850 122 -136 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xe1.text2"}','{"translate":"pl.sign.xe1.text3"}','{"translate":""}']}}
data merge block -851 104 -142 {front_text:{messages:['{"translate":""}','{"translate":"pl.sign.xe2.text2"}','{"translate":"pl.sign.xe2.text3"}','{"translate":""}']}}

setblock -843 133 -138 minecraft:repeating_command_block{Command:"execute as @p[x=-845,y=134,z=-138,distance=..5] run function pld:system/ex_xian/check"} replace 
setblock -849 122 -134 minecraft:command_block{Command:"execute as @p[x=-849,y=122,z=-136,distance=..40] run function pld:system/ex_xian/summon_monster"} replace 

setblock -851 103 -144 minecraft:command_block{Command:"execute as @p[x=-853,y=102,z=-142,dx=4,dy=5,dz=7] run function pld:system/ex_xian/monster_check"} replace 

data merge block -845 133 -138 {Items:}
setblock -850 122 -140 air
setblock -849 122 -141 stone
kill @e[type=villager,tag=!panling]
execute as @e[type=cow] run function pld:system/tp_and_kill_self
execute positioned -845 129 -139 run function pld:npcs/west/xe2
execute positioned -848 116 -139 run function pld:npcs/west/xe3
#区块卸载
forceload remove -835 -130 -849 -140
#记分板数值增加以及bossbar修改
function pld:beta/chunk/count
#链接下一个chunk
schedule function pld:beta/chunk/west/-54_-11/pre 1t