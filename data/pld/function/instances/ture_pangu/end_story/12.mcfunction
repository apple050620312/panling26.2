#剧情内容
#tellraw @a {text:"",extra:[{text:"葉靈谷主：",color:aqua},{text:"「所以，你開天闢地，創造萬物的目的，就只是為了在最後一刻把我們吃了......？」",color:white}]} 
tellraw @a {"translate":"pl.info.end_story.8"}

#对话延迟
scoreboard players set #system tick_end_story 50
#跳跃对话
scoreboard players add #system conversation_end_story 1