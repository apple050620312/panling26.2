execute if score #system instance3_skill matches 1 run function pld:instances/instance3/boss_hp-1
execute if score #system instance3_skill matches 0 run function pld:instances/instance3/phase_failed2
data merge block 2715 67 -875 {Items:}