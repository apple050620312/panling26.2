#剧情内容
#tellraw @a {text:"",extra:[{text:"\n\n感謝",color:gold,bold:true}]} 
tellraw @a {"translate":"pl.info.end_story.45"}


#对话延迟
scoreboard players set #system tick_end_story 10
#跳跃对话
scoreboard players add #system conversation_end_story 1