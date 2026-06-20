#剧情内容
playsound minecraft:pl.final_story.23 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.29"}]
#tellraw @a  {text:"",extra:[{text:"◎ 战神族-族长：",§c},{text:"战备物资的补给",§a},{text:"让我负责，这些年储存的",§f},{text:"战备物资",§6},{text:"总算是可以派上用场了！",§f}]}
#对话延迟
scoreboard players set #system tick_final_story 40
#跳跃对话
scoreboard players add #system conversation_final_story 1
