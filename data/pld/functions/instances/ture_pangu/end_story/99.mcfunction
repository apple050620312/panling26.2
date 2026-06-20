#剧情内容
tellraw @a {"translate":"pl.info.end_story.92"}
#激活烟花
schedule function pld:instances/ture_pangu/end_story/fireworks/1 2s

#对话延迟
scoreboard players set #system tick_end_story 10
#跳跃对话
scoreboard players add #system conversation_end_story 1