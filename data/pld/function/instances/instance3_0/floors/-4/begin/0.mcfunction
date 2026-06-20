scoreboard players set #system in3_-4f_phase 1
tellraw @a[x=2834,y=31,z=-849,distance=..21] {"translate":"pl.info.instance3_0.boss4_begin3"}
function pld:instances/instance3_0/floors/-4/boss
bossbar set pld:instance3_0_boss4hp visible true
scoreboard players set #system in3_boss4_skillt 150
summon armor_stand 2832 42 -849 {Tags:["in30_-4"]}

#下次释放技能
scoreboard players set #system in3_skill_dp_tick 200