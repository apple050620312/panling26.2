#剧情内容
#tellraw @a {text:"",extra:[{text:"「盟主，下輩子，我們還會相遇嗎？」",color:white}]} 
tellraw @a {"translate":"pl.info.end_story.15"}

#对话延迟
scoreboard players set #system tick_end_story 40
#跳跃对话
scoreboard players add #system conversation_end_story 1