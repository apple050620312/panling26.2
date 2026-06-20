execute if score #system in3_skill_ds_load matches 0..100 run scoreboard players add #system in3_skill_ds_load 1
execute if score #system in3_skill_ds_load matches 100 run function pld:instances/instance3_0/floors/-4/skill/double_sword/main
execute if score #system in3_skill_ds2_load matches 0..100 run function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/load_tick
execute if score #system in3_skill_ds2_load matches 100 run function pld:instances/instance3_0/floors/-4/skill/double_sword/end

#持续在选择的角色脚下画圆 每秒一次 命中前一次
execute if score #system in3_skill_ds2_load matches 0..100 run function pld:instances/instance3_0/floors/-4/skill/double_sword/sword/check

#技能cd倒计时
execute if score #system in3_skill_ds_tick matches 0.. run scoreboard players remove #system in3_skill_ds_tick 1
execute if score #system in3_skill_ds_tick matches 0 run function pld:instances/instance3_0/floors/-4/skill/double_sword/pre

#bossbar
execute if score #system in3_skill_ds_load matches 0..100 store result bossbar pld:instance3_0_ds_loading value run scoreboard players get #system in3_skill_ds_load
execute if score #system in3_skill_ds2_load matches 0..100 store result bossbar pld:instance3_0_ds_loading value run scoreboard players get #system in3_skill_ds2_load

