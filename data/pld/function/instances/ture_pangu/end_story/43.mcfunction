#剧情内容
#tellraw @a {text:"",extra:[{text:"\n但我們可以努力達成一個，更多歡笑，更少仇恨的世界。",color:aqua}]}
tellraw @a {"translate":"pl.info.end_story.37"}
playsound pl.end_story.08 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 30
#跳跃对话
scoreboard players add #system conversation_end_story 1