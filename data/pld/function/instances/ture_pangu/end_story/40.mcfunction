#剧情内容
#tellraw
tellraw @a {"translate":"pl.info.end_story.34"}
playsound pl.end_story.05 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 80
#跳跃对话
scoreboard players add #system conversation_end_story 1