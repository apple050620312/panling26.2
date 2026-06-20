#剧情内容
#tellraw @a {text:"",extra:[{text:"唯與真盤古元神之戰將無法再次進行。",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.72"}
playsound pl.end_story.15 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 25
#跳跃对话
scoreboard players add #system conversation_end_story 1