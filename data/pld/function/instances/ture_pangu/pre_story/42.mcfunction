#剧情内容
playsound minecraft:pl.final_story.32 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.42"}]
#tellraw @a  {text:"",extra:[{text:"◎ 仙族-现任盟主：",§d},{text:"准备好了，开始传送......3，2，1，",§f},{text:"传送",§d},{text:"！",§f}]}

#剧情延迟
scoreboard players set #system tick_final_story 32
#跳跃对话
scoreboard players add #system conversation_final_story 1



