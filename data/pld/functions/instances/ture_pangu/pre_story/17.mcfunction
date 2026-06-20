#剧情内容
playsound minecraft:pl.final_story.15 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.17.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=0,finish_shen_hide=1}]","color":"aqua"},{"translate":"pl.info.final_story.17.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族",color:aqua},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission0_min=1]",color:aqua},{text:"：",color:aqua},{text:".......長老，其實我很早就注意到了，我們神族可以",color:white},{text:"感應到同類的血脈",color:aqua},{text:"，但是",color:white},{text:"唯獨在你身上",color:red},{text:"，我",color:white},{text:"什麼都感應不到",color:red},{text:"。可是即使如此，我依舊下意識的",color:white},{text:"害怕並臣服於你......",color:gold},{text:"你，究竟是誰！？",color:dark_red,bold:true}]}
#对话延迟
scoreboard players set #system tick_final_story 118
#跳跃对话
scoreboard players add #system conversation_final_story 1
