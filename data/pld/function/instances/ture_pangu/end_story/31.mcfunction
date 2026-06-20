#剧情内容
#tellraw @a {text:"",extra:[{text:"\n太上老君和忘塵幾位回到了神族，與 ",color:gold},{selector:"@r[score_racemission0_min=1]",color:yellow},{text:" 等人成為了新任的長老群，重新整頓，建立起了族內的秩序，也安撫了失去大部分力量的族人。",color:gold}]}
tellraw @a [{"translate":"pl.info.end_story.25.a"},{"selector":"@r[scores={race=0,finish_shen_hide=1}]","color":"yellow"},{"translate":"pl.info.end_story.25.b"}]


#对话延迟
scoreboard players set #system tick_end_story 35
#跳跃对话
scoreboard players add #system conversation_end_story 1