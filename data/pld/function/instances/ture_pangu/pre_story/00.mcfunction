#剧情内容
tellraw @a [{"translate":"pl.info.final_story.0.a"},{"selector":"@r[x=2992,y=0,z=-2000,dx=241,dy=255,dz=303]","color":"white"},{"translate":"pl.info.final_story.0.b"}]
#tellraw @a  {text:"",extra:[{text:"====世界公告：",color:gold},{selector:"@r[2992,0,-2000,dx=241,dy=255,dz=303]",color:white},{text:"等人擊敗了聖山處剛復活的盤古====",color:gold}]}

#对话延迟
scoreboard players set #system tick_final_story 20
#跳跃对话
scoreboard players add #system conversation_final_story 1