#剧情内容
playsound minecraft:pl.final_story.09 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.10"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族長老：",color:aqua},{text:"我派遣",color:white},{text:"女媧",color:aqua},{text:"去製造",color:white},{text:"人類",color:yellow},{text:"，就是為了藉著人類的手去",color:white},{text:"殲滅妖族",color:red},{text:"。人與妖同為",color:white},{text:"世界的一部份",color:gold},{text:"，自然不會受到",color:white},{text:"天道的制約",color:gold},{text:"。",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 70
#跳跃对话
scoreboard players add #system conversation_final_story 1
