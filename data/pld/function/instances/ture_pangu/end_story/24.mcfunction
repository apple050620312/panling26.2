#剧情内容
#tellraw @a {text:"",extra:[{text:"輕風吹過，兩人手勾手，化為煙塵消逝在空氣中......",color:gold}]} 
tellraw @a {"translate":"pl.info.end_story.19"}

#对话延迟
scoreboard players set #system tick_end_story 50
#跳跃对话
scoreboard players add #system conversation_end_story 1