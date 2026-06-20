#资历点数不足
execute unless score @s achievement_point >= #system ach_pt_need_yao run tellraw @s {"translate":"pl.info.yao.ach_pt_not_enough"}
#资历点数足够，但是主线没有完成
execute if score @s achievement_point >= #system ach_pt_need_yao unless entity @s[advancements={pld:mission/yao/main/finished=true}] run tellraw @s {"translate":"pl.info.yao.not_finish_main"} 
#资历点数足够，主线完成,但是种族好感不足
execute if score @s achievement_point >= #system ach_pt_need_yao if entity @s[advancements={pld:mission/yao/main/finished=true}] unless score @s racefriend1 >= #system race_fd_need_yao run tellraw @s {"translate":"pl.info.yao.race_fd_not_enough"} 
#资历点数足够，主线完成,种族好感足够，开启任务
execute if score @s achievement_point >= #system ach_pt_need_yao if entity @s[advancements={pld:mission/yao/main/finished=true}] if score @s racefriend1 >= #system race_fd_need_yao run function pld:system/truth/yao/1/main

