#剧情内容
playsound minecraft:pl.final_story.31 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.40"}]
#tellraw @a  {text:"",extra:[{text:"◎ 仙族-雨竹：",§d},{text:"是的，",§f},{text:"盟主",§6},{text:"。",§f}]}

scoreboard players set #system tick_final_story 15
#跳跃对话
scoreboard players add #system conversation_final_story 1