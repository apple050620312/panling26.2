scoreboard objectives add instance3_5f dummy ["镇妖塔是否通过第五层"]
#玩家身上是前几层的倒计时、system上是boss战的阶段倒计时
scoreboard objectives add instance3_tick dummy ["镇妖塔计时"]
scoreboard objectives add instance3_floor dummy ["镇妖塔玩家所在层"]
scoreboard objectives add instance3_debuff dummy ["镇妖塔妖族玩家负面等级"]

scoreboard objectives add instance3_skill dummy ["镇妖塔大长老施法标记"]
scoreboard objectives add instance3_bosshp dummy ["镇妖塔大长老血量"]

scoreboard objectives add instance3_kill teamkill.dark_red ["镇妖塔怪物击杀检测"]
scoreboard objectives add instance3_tickxs dummy ["镇妖塔倒计时显示"]

scoreboard objectives add instance3_0c dummy ["阴勾玉数目"]
scoreboard objectives add instance3_1c dummy ["阴勾玉数目"]

#镇妖塔-失败累计次数
scoreboard objectives add instance3_failed dummy

bossbar add pld:instance3_bosshp {"translate": "pl.bossbar.instance3_boss"}
bossbar set pld:instance3_bosshp color red
bossbar set pld:instance3_bosshp max 10
bossbar set pld:instance3_bosshp name {"translate": "pl.bossbar.instance3_boss"}

#机制：
#法阵激活需要投入与阴阳鱼眼的颜色一致的勾玉八枚
#与长老相同颜色的阵法会加强长老的效果，只有反向颜色才能抵抗并伤害长老

#情况1；反向勾玉颜色，会破坏阵法，长老提前施法；
#情况2：同向阵法颜色，会加强长老效果，全屏斩杀；
#情况3：反向阵法颜色，会抑制长老效果，反噬长老血量；