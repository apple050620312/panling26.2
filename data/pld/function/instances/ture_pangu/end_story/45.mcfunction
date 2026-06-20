#剧情内容
#tellraw @a {text:"",extra:[{text:"\n而讓這個宇宙更有價值，持續成長的，正是我們那顆希望世界更好的",color:aqua},{text:"心",color:red},{text:"。\n\n",color:aqua}]}
tellraw @a {"translate":"pl.info.end_story.39"}
playsound pl.end_story.10 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 45
#跳跃对话
scoreboard players add #system conversation_end_story 1