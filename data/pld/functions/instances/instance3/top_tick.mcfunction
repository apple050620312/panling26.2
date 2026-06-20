#长老施法倒计时
execute if score #system instance3_tick matches 0.. run scoreboard players remove #system instance3_tick 1
execute if score #system instance3_tick matches 0 run function pld:instances/instance3/phase_failed0
#少阳阵位检测
execute if block 2715 67 -895 chest{Items:[{Slot:0b,tag:{id:"panling:instance3_1"}}]} run function pld:instances/instance3/phase_failed1
execute if block 2715 67 -895 chest{Items:[{Slot:0b,tag:{id:"panling:instance3_0"}}]} store result score #system instance3_0c run data get block 2715 67 -895 Items[0].Count
execute if score #system instance3_0c matches 8.. run function pld:instances/instance3/phase_check0
scoreboard players set #system instance3_0c 0
execute unless block 2715 67 -895 chest{Items:[{Slot:0b,tag:{id:"panling:instance3_0"}}]} run data merge block 2715 67 -895 {Items:[]}
#少阴阵位检测
execute if block 2715 67 -875 chest{Items:[{Slot:0b,tag:{id:"panling:instance3_0"}}]} run function pld:instances/instance3/phase_failed1
execute if block 2715 67 -875 chest{Items:[{Slot:0b,tag:{id:"panling:instance3_1"}}]} store result score #system instance3_1c run data get block 2715 67 -875 Items[0].Count
execute if score #system instance3_1c matches 8.. run function pld:instances/instance3/phase_check1
scoreboard players set #system instance3_1c 0
execute unless block 2715 67 -875 chest{Items:[{Slot:0b,tag:{id:"panling:instance3_1"}}]} run data merge block 2715 67 -875 {Items:[]}

#bossbar展示

execute store result bossbar pld:instance3_bosshp value run scoreboard players get #system instance3_bosshp