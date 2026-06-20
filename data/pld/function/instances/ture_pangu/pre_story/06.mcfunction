#剧情内容
playsound minecraft:pl.final_story.05 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.6.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=0,finish_shen_hide=1}]","color":"aqua"},{"translate":"pl.info.final_story.6.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族",color:aqua},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission0_min=1]",color:aqua},{text:"：",color:aqua},{text:"你錯了......",color:white},{text:"盤古",color:gold},{text:"與我們",color:white},{text:"神族",color:aqua},{text:"其實",color:white},{text:"並不屬於這個世界",color:red},{text:"，",color:white},{text:"妖族",color:green},{text:"才是這個世界的",color:white},{text:"原住民",color:green},{text:"。這也是為什麼我們被",color:white},{text:"世界的意志-也就是天道-制約",color:gold,bold:true},{text:"而沒有辦法對",color:white},{text:"妖族",color:green},{text:"出手。",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 115
#跳跃对话
scoreboard players add #system conversation_final_story 1
