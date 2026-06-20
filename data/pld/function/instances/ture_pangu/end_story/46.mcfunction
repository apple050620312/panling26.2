#剧情内容
#tellraw @a {text:"",extra:[{text:"盤古已死，靈域仍在。\n使域有靈，唯心而已。",color:gold,bold:true}]}
tellraw @a {"translate":"pl.info.end_story.40"}
playsound pl.end_story.11 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 70
#跳跃对话
scoreboard players add #system conversation_end_story 1