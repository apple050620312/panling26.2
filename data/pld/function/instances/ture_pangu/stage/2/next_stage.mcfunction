#重置阶段记分板
scoreboard players reset #system final_battle_phase
#更新战场记分板
scoreboard players set #system final_battle_stage 3

#下一个阶段
function pld:instances/ture_pangu/stage/3/init

#更新npc
execute positioned -342 206 -1453 run function pld:npcs/final_story/8

