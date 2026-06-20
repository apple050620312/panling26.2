#剧情内容
playsound minecraft:pl.final_story.16 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.19"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族長老：",color:red},{text:"哈哈哈哈哈哈，你們比我想像的要",color:white},{text:"聰明多了",color:gold},{text:"，我還以為，至少在",color:white},{text:"滅世",color:red,bold:true},{text:"之前，不會有人察覺到這件事情呢，我果然還是太仁慈了嗎......",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 90
#跳跃对话
scoreboard players add #system conversation_final_story 1
