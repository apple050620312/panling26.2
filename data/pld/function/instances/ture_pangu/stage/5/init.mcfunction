#初始化-小阵-土
forceload add -359 -1557
setblock -359 214 -1557 glass
setblock -359 213 -1557 minecraft:beacon
fill -358 212 -1558 -360 212 -1556 minecraft:iron_block
forceload remove -359 -1557

#初始化记分板
scoreboard players set #system final_battle_stage 5
scoreboard players set #system final_battle_phase 1


#初始化完成后，执行阶段一内容
function pld:instances/ture_pangu/stage/5/phase1

