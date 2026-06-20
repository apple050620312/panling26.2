#剧情内容
playsound minecraft:pl.final_story.26 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.33"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族-太上老君：",§b},{text:"这场战役",§c},{text:"可不能少了我们，你说是吧",§f},{text:"神农",§b},{text:"？",§f}]}
#对话延迟
scoreboard players set #system tick_final_story 38
#跳跃对话
scoreboard players add #system conversation_final_story 1



