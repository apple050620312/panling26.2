#剧情内容
playsound minecraft:pl.final_story.04 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.5.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=4,finish_ren_hide=1}]","color":"yellow"},{"translate":"pl.info.final_story.5.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 人族",color:yellow},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission4_min=1]",color:yellow},{text:"：",color:yellow},{text:"不會吧，",color:white},{text:"盤古",color:gold},{text:"可是創造這一切的",color:white},{text:"創世神",color:aqua},{text:"，他怎麼可能試圖",color:white},{text:"毀滅他努力的成果",color:dark_red},{text:"......",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 48
#跳跃对话
scoreboard players add #system conversation_final_story 1
