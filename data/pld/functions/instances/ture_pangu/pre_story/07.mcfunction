#剧情内容
playsound minecraft:pl.final_story.06 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.7.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=1,finish_yao_hide=1}]","color":"green"},{"translate":"pl.info.final_story.7.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 妖族",color:green},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission1_min=1]",color:green},{text:"：",color:green},{text:"我們是......",color:white},{text:"原住民",color:green},{text:"？既然如此，為何",color:white},{text:"人族和仙族",color:gold},{text:"依舊可以繼續",color:white},{text:"迫害我族",color:red},{text:"？",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 50
#跳跃对话
scoreboard players add #system conversation_final_story 1
