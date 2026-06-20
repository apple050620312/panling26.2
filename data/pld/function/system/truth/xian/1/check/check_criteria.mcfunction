#资历点数不足
execute unless score @s achievement_point >= #system ach_pt_need_xian run tellraw @s {"translate":"pl.info.xian.ach_pt_not_enough"}
#资历点数足够，但是主线没有完成
execute if score @s achievement_point >= #system ach_pt_need_xian unless entity @s[advancements={pld:mission/xian/main/finished=true}] run tellraw @s {"translate":"pl.info.xian.not_finish_main"} 
#资历点数足够，主线完成,但是种族好感不足
execute if score @s achievement_point >= #system ach_pt_need_xian if entity @s[advancements={pld:mission/xian/main/finished=true}] unless score @s racefriend2 >= #system race_fd_need_xian run tellraw @s {"translate":"pl.info.xian.race_fd_not_enough"} 
#资历点数足够，主线完成,种族好感足够，开启任务
execute if score @s achievement_point >= #system ach_pt_need_xian if entity @s[advancements={pld:mission/xian/main/finished=true}] if score @s racefriend2 >= #system race_fd_need_xian run function pld:system/truth/xian/1/main
