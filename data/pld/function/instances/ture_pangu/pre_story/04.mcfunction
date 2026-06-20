#剧情内容

tellraw @a [{"translate":"pl.info.final_story.4.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=2,finish_xian_hide=1}]","color":"light_purple"},{"translate":"pl.info.final_story.4.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 仙族",color:light_purple},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission2_min=1]",color:light_purple},{text:"：",color:light_purple},{text:"所以只有一個可能性，就是",color:white},{text:"盤古的本能",color:red},{text:"下意識的想要",color:white},{text:"毀滅世界",color:dark_red},{text:"......",color:white}]}

#对话延迟
scoreboard players set #system tick_final_story 45
#跳跃对话
scoreboard players add #system conversation_final_story 1