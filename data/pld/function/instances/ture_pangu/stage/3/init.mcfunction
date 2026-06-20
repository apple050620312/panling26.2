#初始化-小阵-水
forceload add -381 -1479
setblock -381 102 -1479 glass
setblock -381 101 -1479 minecraft:beacon
fill -382 100 -1478 -380 100 -1480 minecraft:iron_block
forceload remove -381 -1479

#初始化记分板
scoreboard players set #system final_battle_stage 3
scoreboard players set #system final_battle_phase 1


#初始化完成后，执行阶段一内容
function pld:instances/ture_pangu/stage/3/phase1