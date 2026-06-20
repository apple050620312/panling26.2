#剧情内容
#tellraw @a {text:"",extra:[{text:"「還真是......樂觀的小蟲子啊......」光束終究收攏在一起，然後慢慢的消失了。",color:gold}]} 
tellraw @a {"translate":"pl.info.end_story.12"}

#对话延迟
scoreboard players set #system tick_end_story 15
#跳跃对话
scoreboard players add #system conversation_end_story 1