#如果没有开启护送死士 那就开启
execute unless score #final_npc_finish int matches 1 unless entity @e[type=villager,tag=core_npc] run function pld:instances/ture_pangu/stage/1/npc/1
#将玩家tp进场
tp @a[x=-361,y=199,z=-1462,distance=..5] -289 155 -1520