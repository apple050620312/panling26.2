#资历点数不足
execute unless score @s achievement_point >= #system ach_pt_need_shen run tellraw @s {"translate":"pl.info.shen.ach_pt_not_enough"}
#资历点数足够，但是主线没有完成
execute if score @s achievement_point >= #system ach_pt_need_shen unless entity @s[advancements={pld:mission/shen/main/finished=true}] run tellraw @s {"translate":"pl.info.shen.not_finish_main"} 
#资历点数足够，主线完成,但是种族好感不足
execute if score @s achievement_point >= #system ach_pt_need_shen if entity @s[advancements={pld:mission/shen/main/finished=true}] unless score @s racefriend0 >= #system race_fd_need_shen run tellraw @s {"translate":"pl.info.shen.race_fd_not_enough"} 
#资历点数足够，主线完成,种族好感足够，开启任务
execute if score @s achievement_point >= #system ach_pt_need_shen if entity @s[advancements={pld:mission/shen/main/finished=true}] if score @s racefriend0 >= #system race_fd_need_shen run function pld:system/truth/shen/1/main