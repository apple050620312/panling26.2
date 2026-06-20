#剧情内容

tellraw @a [{"translate":"pl.info.final_story.14"}]
#tellraw @a  {text:"",extra:[{text:"◎ 神族長老：",color:aqua},{text:"不過你們依舊充滿著",color:white},{text:"貪婪和欲望",color:red},{text:"，只要給一點",color:white},{text:"誘因",color:gold},{text:"，你們就迫不及待的",color:white},{text:"進攻妖族的領地，掠奪他們的資源",color:dark_red,bold:true},{text:"，不是嗎？打著",color:white},{text:"斬妖除魔",color:red},{text:"的名號，冠冕堂皇得很吶。",color:white}]}
#对话延迟
scoreboard players set #system tick_final_story 100
#跳跃对话
scoreboard players add #system conversation_final_story 1
