#剧情内容
#tellraw @a {text:"",extra:[{text:"梓決臉色一變：",color:aqua},{text:"「你說什麼？」",color:white}]}', 
tellraw @a {"translate":"pl.info.end_story.4"}

#对话延迟
scoreboard players set #system tick_end_story 30
#跳跃对话
scoreboard players add #system conversation_end_story 1