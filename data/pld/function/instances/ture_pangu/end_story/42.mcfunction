#剧情内容
#tellraw @a {text:"",extra:[{text:"\n\n我們雖然無法創造世界，亦無法毀滅世界。",color:aqua}]}
tellraw @a {"translate":"pl.info.end_story.36"}
playsound pl.end_story.07 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 25
#跳跃对话
scoreboard players add #system conversation_end_story 1