#剧情内容
#tellraw @a {text:"",extra:[{text:"盤古並沒有回答谷主的問題：",color:gold},{text:"「......呵呵......你們只是在苟延殘喘罷了......沒有盤古卻又營養豐沛的宇宙，就像一塊美味的大餅一樣，遲早有一天，我的族人會來到這裡，你們就等著吧......」",color:red}]} 
tellraw @a {"translate":"pl.info.end_story.9"}

#对话延迟
scoreboard players set #system tick_end_story 65
#跳跃对话
scoreboard players add #system conversation_end_story 1