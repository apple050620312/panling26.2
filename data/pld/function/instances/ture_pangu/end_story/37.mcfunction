#剧情内容
#tellraw @a {text:"",extra:[{text:"\n人族數量越來越多，其餘四族漸漸隱沒，只剩下零星的部落隱居在人群之中。",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.31"}
playsound pl.end_story.02 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 45
#跳跃对话
scoreboard players add #system conversation_end_story 1