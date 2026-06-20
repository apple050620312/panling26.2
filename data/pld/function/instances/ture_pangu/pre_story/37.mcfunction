#剧情内容
playsound minecraft:pl.final_story.29 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.37"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族-芊无天君：",§b},{text:"长老，你",§f},{text:"欠的太多",§c},{text:"，该是还债的时候了！",§f}]}
#对话延迟
scoreboard players set #system tick_final_story 30
#跳跃对话
scoreboard players add #system conversation_final_story 1



















