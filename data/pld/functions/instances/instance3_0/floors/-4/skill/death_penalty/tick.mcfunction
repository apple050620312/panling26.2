execute if score #system in3_skill_dp_load matches 0..100 run scoreboard players add #system in3_skill_dp_load 1
execute if score #system in3_skill_dp_load matches 100 run function pld:instances/instance3_0/floors/-4/skill/death_penalty/main

#持续选择最近的角色脚下画圆 每秒一次 命中前一次
execute if score #system in3_skill_dp_load matches 0..100 run function pld:instances/instance3_0/floors/-4/skill/death_penalty/particle/check


#技能cd倒计时
execute if score #system in3_skill_dp_tick matches 0.. run scoreboard players remove #system in3_skill_dp_tick 1
execute if score #system in3_skill_dp_tick matches 0 run function pld:instances/instance3_0/floors/-4/skill/death_penalty/pre

#bossbar
execute store result bossbar pld:instance3_0_dp_loading value run scoreboard players get #system in3_skill_dp_load