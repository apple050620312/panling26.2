#初始化-小阵-木
forceload add -387 -1363
setblock -387 166 -1363 glass
setblock -387 165 -1363 minecraft:beacon
fill -386 164 -1362 -388 164 -1364 minecraft:iron_block
forceload remove -387 -1363

#初始化记分板
scoreboard players set #system final_battle_stage 2
scoreboard players set #system final_battle_phase 1
#开启阶段1bossbar


#初始化完成后，执行阶段一内容
function pld:instances/ture_pangu/stage/2/phase1

