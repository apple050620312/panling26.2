#剧情内容
playsound minecraft:pl.final_story.14 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.16.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=3,finish_zhan_hide=1}]","color":"red"},{"translate":"pl.info.final_story.16.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 戰神族",color:red},{selector:"@p[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission3_min=1]",color:red},{text:"：",color:red},{text:"......我也有一筆帳要跟你算。當年",color:white},{text:"下令進攻戰神聯盟據點",color:red},{text:"的人就是你吧？你精心安排了一場",color:white},{text:"必勝的局",color:gold},{text:"，外人看起來似乎是很",color:white},{text:"公平的會議",color:aqua},{text:"，但是討論的結果一定是",color:white},{text:"動用聖獸鎮壓",color:dark_red,bold:true},{text:",你究竟為什麼要做這些事情？",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 100
#跳跃对话
scoreboard players add #system conversation_final_story 1
