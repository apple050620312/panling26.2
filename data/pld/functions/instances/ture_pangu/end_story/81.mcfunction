#剧情内容
#tellraw @a {text:"",extra:[{text:"\n那麼，謝謝你們的遊玩，有緣再會囉。",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.74"}
playsound pl.end_story.17 ambient @a 179 44 19 10000
#激活烟花
schedule function pld:instances/ture_pangu/end_story/fireworks/1 2s

#对话延迟
scoreboard players set #system tick_end_story 75
#跳跃对话
scoreboard players add #system conversation_end_story 1