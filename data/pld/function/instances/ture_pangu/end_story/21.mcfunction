#剧情内容
#tellraw @a {text:"",extra:[{text:"「呵呵，如果有下輩子，就換我等你了。」",color:white}]}
tellraw @a {"translate":"pl.info.end_story.16"}

#对话延迟
scoreboard players set #system tick_end_story 40
#跳跃对话
scoreboard players add #system conversation_end_story 1