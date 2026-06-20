#剧情内容

tellraw @a [{"translate":"pl.info.final_story.23"}]
#tellraw @a  {text:"",extra:[{text:"◎ 众人：",§6},{text:".....！？",§f}]}
#对话延迟
scoreboard players set #system tick_final_story 18
#跳跃对话
scoreboard players add #system conversation_final_story 1
