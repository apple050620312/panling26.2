#剧情内容
playsound minecraft:pl.final_story.22 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.28"}]
#tellraw @a  {text:"",extra:[{text:"◎ 人族-人皇轩辕氏：",§e},{text:"粮食补给",§a},{text:"交给朕吧，朕会协助各位的。",§f}]}
#对话延迟
scoreboard players set #system tick_final_story 23
#跳跃对话
scoreboard players add #system conversation_final_story 1
