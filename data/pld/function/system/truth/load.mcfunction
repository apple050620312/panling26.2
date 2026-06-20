scoreboard objectives add trigger_shen_hide trigger ["神族真相任务对话觸發器"]
scoreboard objectives add trigger_yao_hide trigger ["妖族真相任务对话觸發器"]
scoreboard objectives add trigger_xian_hide trigger ["仙族真相任务对话觸發器"]
scoreboard objectives add trigger_zhan_hide trigger ["战神族真相任务对话觸發器"]
scoreboard objectives add trigger_ren_hide trigger ["人族真相任务对话觸發器"]

scoreboard objectives add trigger_shen_hide_item trigger ["神族真相任务物品觸發器"]
scoreboard objectives add trigger_yao_hide_item trigger ["妖族真相任务物品觸發器"]
scoreboard objectives add trigger_xian_hide_item trigger ["仙族真相任务物品觸發器"]
scoreboard objectives add trigger_zhan_hide_item trigger ["战神族真相任务物品觸發器"]
scoreboard objectives add trigger_ren_hide_item trigger ["人族真相任务物品觸發器"]


scoreboard objectives add finish_shen_hide dummy ["神族真相任务完成标记"]
scoreboard objectives add finish_yao_hide dummy ["妖族真相任务完成标记"]
scoreboard objectives add finish_xian_hide dummy ["仙族真相任务完成标记"]
scoreboard objectives add finish_zhan_hide dummy ["战神族真相任务完成标记"]
scoreboard objectives add finish_ren_hide dummy ["人族真相任务完成标记"]

#奇数为对话中，偶数为对话结束
scoreboard objectives add process_shen_hide dummy ["神族真相任务进度"]
scoreboard objectives add process_yao_hide dummy ["妖族真相任务进度"]
scoreboard objectives add process_xian_hide dummy ["仙族真相任务进度"]
scoreboard objectives add process_zhan_hide dummy ["战神族真相任务进度"]
scoreboard objectives add process_ren_hide dummy ["人族真相任务进度"]

scoreboard objectives add conversation_shen_hide dummy ["神族真相任务对话进度"]
scoreboard objectives add conversation_yao_hide dummy ["妖族真相任务对话进度"]
scoreboard objectives add conversation_xian_hide dummy ["仙族真相任务对话进度"]
scoreboard objectives add conversation_zhan_hide dummy ["战神族真相任务对话进度"]
scoreboard objectives add conversation_ren_hide dummy ["人族真相任务对话进度"]

scoreboard objectives add tick_shen_hide dummy ["神族真相任务对话计时器"]
scoreboard objectives add tick_yao_hide dummy ["妖族真相任务对话计时器"]
scoreboard objectives add tick_xian_hide dummy ["仙族真相任务对话计时器"]
scoreboard objectives add tick_zhan_hide dummy ["战神族真相任务对话计时器"]
scoreboard objectives add tick_ren_hide dummy ["人族真相任务对话计时器"]


scoreboard objectives add ach_pt_need_shen dummy ["神族真相任务所需资历点数"]
scoreboard players set #system ach_pt_need_shen 300
scoreboard objectives add ach_pt_need_yao dummy ["妖族真相任务所需资历点数"]
scoreboard players set #system ach_pt_need_yao 300
scoreboard objectives add ach_pt_need_xian dummy ["仙族真相任务所需资历点数"]
scoreboard players set #system ach_pt_need_xian 300
scoreboard objectives add ach_pt_need_zhan dummy ["战神族真相任务所需资历点数"]
scoreboard players set #system ach_pt_need_zhan 300
scoreboard objectives add ach_pt_need_ren dummy ["人族真相任务所需资历点数"]
scoreboard players set #system ach_pt_need_ren 300

scoreboard objectives add race_fd_need_shen dummy ["神族真相任务所需好感点数"]
scoreboard players set #system race_fd_need_shen 50
scoreboard objectives add race_fd_need_yao dummy ["妖族真相任务所需好感点数"]
scoreboard players set #system race_fd_need_yao 50
scoreboard objectives add race_fd_need_xian dummy ["仙族真相任务所需好感点数"]
scoreboard players set #system race_fd_need_xian 50
scoreboard objectives add race_fd_need_zhan dummy ["战神族真相任务所需好感点数"]
scoreboard players set #system race_fd_need_zhan 50
scoreboard objectives add race_fd_need_ren dummy ["人族真相任务所需好感点数"]
scoreboard players set #system race_fd_need_ren 50


