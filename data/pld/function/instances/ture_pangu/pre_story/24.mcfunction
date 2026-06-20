#剧情内容
playsound minecraft:pl.final_story.20 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.24"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族长老/盘古元神：",§4,§l},{text:"史书上都记载着，",§f},{text:"盘古开天辟地",§6},{text:"，但是却不知道",§f},{text:"世界的终焉",§c},{text:"......是我的",§f},{text:"毁天灭地",§c,§l},{text:"啊！",§f}]}

#对话延迟
scoreboard players set #system tick_final_story 65
#跳跃对话
scoreboard players add #system conversation_final_story 1
