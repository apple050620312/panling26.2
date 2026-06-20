#剧情内容
#tellraw @a {text:"",extra:[{text:"\n在蚩尤的帶領下，戰神一族從南方隱居地遷回了中土定居，不過並沒有和人族住在一起，而是選擇了焱砂大漠的火山附近作為新的家園。 ",color:gold},{selector:"@r[score_racemission3_min=1]",color:yellow},{text:" 等人主導了新家的建設工作。",color:gold}]}
tellraw @a [{"translate":"pl.info.end_story.28.a"},{"selector":"@r[scores={race=3,finish_zhan_hide=1}]","color":"yellow"},{"translate":"pl.info.end_story.28.b"}]


#对话延迟
scoreboard players set #system tick_end_story 45
#跳跃对话
scoreboard players add #system conversation_end_story 1