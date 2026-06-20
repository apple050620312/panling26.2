#剧情内容
playsound minecraft:pl.final_story.19 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.22"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族長老：",color:dark_red},{text:"各位，踩在",color:white},{text:"我創造的土地",color:gold},{text:"上，卻向我",color:white},{text:"興師問罪",color:red},{text:"，你們還真是厚臉皮呢......",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 45
#跳跃对话
scoreboard players add #system conversation_final_story 1
