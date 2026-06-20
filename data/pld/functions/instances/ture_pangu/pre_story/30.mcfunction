#剧情内容
playsound minecraft:pl.final_story.24 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.30"}]
#tellraw @a  {text:"",extra:[{text:"◎ 妖族-叶灵谷谷主：",§a},{text:"不好意思啊",§f},{text:"轩辕小子",§e},{text:"，老夫擅自",§f},{text:"救了人",§6},{text:"出来，我们能帮上忙的。",§f}]}
#对话延迟
scoreboard players set #system tick_final_story 33
#跳跃对话
scoreboard players add #system conversation_final_story 1
