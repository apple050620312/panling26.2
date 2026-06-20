#剧情内容
#tellraw @a {text:"",extra:[{text:"\n眾人面面相覷，陷入一陣沉默。\n",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.13"}

#对话延迟
scoreboard players set #system tick_end_story 65
#跳跃对话
scoreboard players add #system conversation_end_story 1