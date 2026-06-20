#提示：离开对话范围，对话中止
tellraw @s {"translate":"pl.info.npc_too_far_stop"}

#重置记分板
#对话标记
scoreboard players set @s process_zhan_hide 2
scoreboard players set @s conversation_zhan_hide 0
#时间标记
scoreboard players set @s tick_zhan_hide -1