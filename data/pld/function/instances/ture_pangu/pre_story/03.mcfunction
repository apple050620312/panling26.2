#剧情内容
playsound minecraft:pl.final_story.03 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.3.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=2,finish_xian_hide=1}]","color":"light_purple"},{"translate":"pl.info.final_story.3.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 仙族",color:light_purple},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission2_min=1]",color:light_purple},{text:"：",color:light_purple},{text:"不可能失敗，我曾經看過",color:white},{text:"四聖獸的設計圖",color:light_purple},{text:"，雖然沒辦法複製",color:white},{text:"盤古的靈魂",color:gold},{text:"，但是卻應該可以完整的重現",color:white},{text:"盤古的肉身",color:red},{text:"，",color:white}]}

#对话延迟
scoreboard players set #system tick_final_story 68
#跳跃对话
scoreboard players add #system conversation_final_story 1