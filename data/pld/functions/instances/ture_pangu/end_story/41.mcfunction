#剧情内容
#tellraw @a {text:"",extra:[{text:"\n但是無論未來如何，那把改變的鑰匙永遠握在你我的手中。",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.35"}
playsound pl.end_story.06 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 35
#跳跃对话
scoreboard players add #system conversation_end_story 1