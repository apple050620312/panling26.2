#tellraw @a [{"translate":"pl.info.final_story.36.b"}]

#tellraw @a {text:"",extra:[{text:"请将显示设定中的视野距离至少调整为 4 chunk 以上，以免副本出现异常状况。",§7}]}

#启动真盘古
#记分板、bossbar初始化
#bossbar
bossbar set pl:final_battle visible true
#重华晶、羽毛关闭
scoreboard players set @a feather_mainland -1
scoreboard players set @a in_final_battle 1
function pld:instances/ture_pangu/stage/1/init


#传送全体玩家
tp @a -339 208 -1442 135 ~
