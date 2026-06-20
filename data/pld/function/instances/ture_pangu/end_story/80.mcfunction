#剧情内容
execute as @a run function pld:instances/ture_pangu/end_story/book/check

#对话延迟
scoreboard players set #system tick_end_story 50
#跳跃对话
scoreboard players add #system conversation_end_story 1