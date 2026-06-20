#剧情内容
playsound minecraft:pl.final_story.30 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.39"}]
#tellraw @a  {text:"",extra:[{text:"◎ 仙族-蓬莱岛主-梓决：",§d},{text:"早就理解",§f},{text:"永恒真正的意义",§6},{text:"......我们也活的够久了，是时候出来",§f},{text:"活动活动",§a},{text:"了......",§f}]}

effect give @a minecraft:instant_health 10 100

#对话延迟
scoreboard players set #system tick_final_story 35
#跳跃对话
scoreboard players add #system conversation_final_story 1
