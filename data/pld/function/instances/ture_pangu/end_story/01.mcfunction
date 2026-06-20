#清理、重置绝大多数的东西 关闭所有真盘战役机制相关内容
#清理战役限定道具-开启
scoreboard players set #system after_final_story_clear_items 1
#清理玩家buff
scoreboard players set #system buff_health_final_story 0
scoreboard players set #system buff_jump_final_story 0
scoreboard players set #system buff_speed_final_story 0
scoreboard players set #system buff_resis_final_story 0
effect clear @a
spawnpoint @a 205 54 -1771
time set 18000
tp @a 1370 152 437 0 0
#关闭bgm
scoreboard players set #system final_battle_stopbgm 1

#对话延迟
scoreboard players set #system tick_end_story 8
#跳跃对话
scoreboard players add #system conversation_end_story 1