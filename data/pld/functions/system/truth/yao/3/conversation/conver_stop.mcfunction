#提示：离开对话范围，对话中止
tellraw @s {"translate":"pl.info.npc_too_far_stop"}

#重置记分板
#对话标记
scoreboard players set @s process_yao_hide 4
scoreboard players set @s conversation_yao_hide 0
#时间标记
scoreboard players set @s tick_yao_hide -1