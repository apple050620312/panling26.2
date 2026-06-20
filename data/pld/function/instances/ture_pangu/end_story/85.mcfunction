#剧情内容
tellraw @a {"translate":"pl.info.end_story.78"}

#对话延迟
scoreboard players set #system tick_end_story 30
#跳跃对话
scoreboard players add #system conversation_end_story 1