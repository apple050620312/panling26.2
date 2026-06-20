#剧情内容
#tellraw @a {text:"",extra:[{text:"戰役系統等協助",color:aqua},{text:一一一一一,color:dark_gray},{text:"傑瑞",color:aqua}]} 
tellraw @a {"translate":"pl.info.end_story.67"}


#对话延迟
scoreboard players set #system tick_end_story 5
#跳跃对话
scoreboard players add #system conversation_end_story 1