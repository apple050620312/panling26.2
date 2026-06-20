#剧情内容
#tellraw @a {text:"",extra:[{text:"隨著陣法的光芒往中間收攏，盤古的聲音越來越小聲。",color:gold}]}', 
tellraw @a {"translate":"pl.info.end_story.7"}

#对话延迟
scoreboard players set #system tick_end_story 40
#跳跃对话
scoreboard players add #system conversation_end_story 1