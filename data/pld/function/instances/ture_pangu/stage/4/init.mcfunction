#初始化-小阵-火
forceload add -382 -1528
setblock -382 106 -1528 glass
setblock -382 105 -1528 minecraft:beacon
fill -383 104 -1529 -381 104 -1527 minecraft:iron_block
forceload remove -382 -1528

#初始化记分板
scoreboard players set #system final_battle_stage 4
scoreboard players set #system final_battle_phase 1


#初始化完成后，执行阶段一内容
function pld:instances/ture_pangu/stage/4/phase1

