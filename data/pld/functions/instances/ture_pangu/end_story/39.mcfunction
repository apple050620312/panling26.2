#剧情内容
#tellraw @a {text:"",extra:[{text:"\n幾千年以後，科技日新月異，社會蓬勃發展。",color:gold}]}
tellraw @a {"translate":"pl.info.end_story.33"}
playsound pl.end_story.04 ambient @a 179 44 19 10000


#对话延迟
scoreboard players set #system tick_end_story 30
#跳跃对话
scoreboard players add #system conversation_end_story 1