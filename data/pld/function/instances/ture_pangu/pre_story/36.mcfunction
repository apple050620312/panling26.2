#剧情内容
playsound minecraft:pl.final_story.28 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.36"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族-千丝谷谷主忘尘：",§b},{text:"我无法忘却当年如",§f},{text:"血海炼狱",§4,§l},{text:"般的场景......",§f}]}


#对话延迟
scoreboard players set #system tick_final_story 23
#跳跃对话
scoreboard players add #system conversation_final_story 1

