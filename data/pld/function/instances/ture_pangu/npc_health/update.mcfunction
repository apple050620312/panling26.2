#每5s生成怪物
function pld:instances/ture_pangu/npc_health/random_summon

#如果附近（5格内）有对应怪物 那么减少npc血量 5s检查一次
#普通怪物 减少1 僵尸 减少5
execute as @e[type=zombie] at @s if entity @e[type=villager,tag=core_npc,distance=..3] run scoreboard players remove @e[type=villager,tag=core_npc] npc_health 5
execute as @e[type=blaze] at @s if entity @e[type=villager,tag=core_npc,distance=..3] run scoreboard players remove @e[type=villager,tag=core_npc] npc_health 1
execute as @e[type=skeleton] at @s if entity @e[type=villager,tag=core_npc,distance=..3] run scoreboard players remove @e[type=villager,tag=core_npc] npc_health 1
execute as @e[type=creeper] at @s if entity @e[type=villager,tag=core_npc,distance=..3] run scoreboard players remove @e[type=villager,tag=core_npc] npc_health 1
execute as @e[type=endermite] at @s if entity @e[type=villager,tag=core_npc,distance=..3] run scoreboard players remove @e[type=villager,tag=core_npc] npc_health 1
execute as @e[type=wither_skeleton] at @s if entity @e[type=villager,tag=core_npc,distance=..3] run scoreboard players remove @e[type=villager,tag=core_npc] npc_health 1
execute as @e[type=cave_spider] at @s if entity @e[type=villager,tag=core_npc,distance=..3] run scoreboard players remove @e[type=villager,tag=core_npc] npc_health 1

#更新村民头顶的生命显示
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 0..20 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health1"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 21..40 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health2"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 41..60 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health3"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 61..80 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health4"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 81..100 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health5"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 101..120 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health6"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 121..140 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health7"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 141..160 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health8"}'}
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches 161..180 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health9"}'}
#execute as @e[type=villager,tag=core_npc,distance=..3] if score @s npc_health matches 91..100 run data merge entity @s {CustomName:'{"translate":"pl.npc.name.final_battle.npc_health10"}'}

#如果村民血量降到0以及以下 护送失敗 重置流程
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches ..0 if score #system final_battle_stage matches 1 run function pld:instances/ture_pangu/stage/1/p2_fail
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches ..0 if score #system final_battle_stage matches 2 run function pld:instances/ture_pangu/stage/2/p2_fail
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches ..0 if score #system final_battle_stage matches 3 run function pld:instances/ture_pangu/stage/3/p2_fail
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches ..0 if score #system final_battle_stage matches 4 run function pld:instances/ture_pangu/stage/4/p2_fail
execute as @e[type=villager,tag=core_npc] if score @s npc_health matches ..0 if score #system final_battle_stage matches 5 run function pld:instances/ture_pangu/stage/5/p2_fail

