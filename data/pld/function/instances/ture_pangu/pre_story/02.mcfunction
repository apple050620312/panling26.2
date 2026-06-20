#剧情内容
playsound minecraft:pl.final_story.02 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.2.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=4,finish_ren_hide=1}]","color":"yellow"},{"translate":"pl.info.final_story.2.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 人族",color:yellow},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission4_min=1]",color:yellow},{text:"：",color:yellow},{text:"複製",color:white},{text:"盤古肉身",color:red},{text:"？可是這傢伙一出來，就嘗試著要",color:white},{text:"毀滅世界",color:dark_red},{text:"了，這是",color:white},{text:"失敗品",color:aqua},{text:"吧？",color:white}]}


#对话延迟
scoreboard players set #system tick_final_story 48
#跳跃对话
scoreboard players add #system conversation_final_story 1