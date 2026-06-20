#剧情内容
tellraw @a [{"translate":"pl.info.final_story.26"}]
#tellraw @a  {text:"",extra:[{text:"====世界是否会",§6},{text:"因此而毁灭",§c,§l},{text:"，就赌在这一战了！！！====",§6}]}
playsound pl.final_story.battle2 ambient @a ~ ~ ~ 1000

#对话延迟
scoreboard players set #system tick_final_story 20
#跳跃对话
scoreboard players add #system conversation_final_story 1
