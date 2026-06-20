#剧情内容
#tellraw @a {text:"",extra:[{text:"太上老君",color:aqua},{text:一一一一一一一一,color:dark_gray},{text:"平凡",color:aqua}]} 
tellraw @a {"translate":"pl.info.end_story.64"}


#对话延迟
scoreboard players set #system tick_end_story 30
#跳跃对话
scoreboard players add #system conversation_end_story 1