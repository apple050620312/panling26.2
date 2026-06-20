#剧情内容
#tellraw @a {text:"",extra:[{text:"這張地圖自2012年9月開始構想，至今已過去二載寒暑，感謝所有參與製作的工作人員，以及支持這張地圖的所有玩家，這是我們共同努力的結晶。
tellraw @a {"translate":"pl.info.end_story.44"}
playsound pl.end_story.13 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 70
#跳跃对话
scoreboard players add #system conversation_end_story 1