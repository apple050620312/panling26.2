#剧情内容
playsound minecraft:pl.final_story.10 ambient @a ~ ~ ~ 1000
tellraw @a [{"translate":"pl.info.final_story.11.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303,scores={race=1,finish_yao_hide=1}]","color":"green"},{"translate":"pl.info.final_story.11.b"}]
#tellraw @a  {text:"",extra:[{text:"◎ 妖族",color:green},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303,score_racemission1_min=1]",color:green},{text:"：",color:green},{text:"我知道，就連那本傳給人族的",color:white},{text:"基礎煉丹法",color:gold},{text:"也是你",color:white},{text:"竄改過的吧",color:red},{text:"？你很清楚煉製丹藥根本不需要",color:white},{text:"我族的內丹",color:green},{text:"！你是故意",color:white},{text:"把這個錯誤的資訊寫進煉丹法",color:red},{text:"，命",color:white},{text:"太上老君",color:aqua},{text:"交給人族的！！！",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 85
#跳跃对话
scoreboard players add #system conversation_final_story 1
