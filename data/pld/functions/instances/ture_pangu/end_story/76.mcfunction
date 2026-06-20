#剧情内容
#tellraw @a {text:"",extra:[{text:"\n-----------------------------------\n",color:gold}]} 
tellraw @a {"translate":"pl.info.end_story.70"}
time set 18000 


#对话延迟
scoreboard players set #system tick_end_story 45
#跳跃对话
scoreboard players add #system conversation_end_story 1