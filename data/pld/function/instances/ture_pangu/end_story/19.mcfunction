#剧情内容
#tellraw @a {text:"",extra:[{text:"「我們，也差不多了呢......」",color:white},{text:"梓決看著已經長滿皺紋的雙手，然後轉頭望向雨竹。",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.14"}
playsound pl.final_story.willbender_1 ambient @a 1370 155 445 2 1 1

#对话延迟
scoreboard players set #system tick_end_story 45
#跳跃对话
scoreboard players add #system conversation_end_story 1