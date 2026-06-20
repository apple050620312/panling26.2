execute unless score #system in3_skill_ds_load matches 0..100 unless score #system in3_skill_dp_load matches 0..100 unless score #system in3_skill_ds2_load matches 0..100 run function pld:instances/instance3_0/floors/-4/skill/explode/pre

effect give @s resistance 600 4 
#bossbar提示无敌
bossbar set pld:instance3_0_boss4hp color blue