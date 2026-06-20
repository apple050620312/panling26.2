#剧情内容
#tellraw @a {text:"",extra:[{text:"\n\n盤靈製作組",color:gold,bold:true}]} 
tellraw @a {"translate":"pl.info.end_story.65"}


#对话延迟
scoreboard players set #system tick_end_story 10
#跳跃对话
scoreboard players add #system conversation_end_story 1