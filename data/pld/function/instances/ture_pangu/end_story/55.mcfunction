#剧情内容
#tellraw @a {text:"",extra:[{text:"所有參與封測的玩家與實況主們",color:aqua}]} 
tellraw @a {"translate":"pl.info.end_story.49"}


#对话延迟
scoreboard players set #system tick_end_story 20
#跳跃对话
scoreboard players add #system conversation_end_story 1