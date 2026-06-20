#剧情内容
playsound minecraft:pl.final_story.18 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.21.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=1,finish_yao_hide=1}]","color":"green"},{"translate":"pl.info.final_story.21.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 妖族",color:green},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission1_min=1]",color:green},{text:"：",color:green},{text:"難道說......",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 13
#跳跃对话
scoreboard players add #system conversation_final_story 1
