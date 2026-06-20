scoreboard objectives add in3_boss4_skillt dummy ["上仙技能cd"]
scoreboard objectives add in3_add1_skillt dummy ["4层傀儡1技能cd"]
scoreboard objectives add in3_add2_skillt dummy ["4层傀儡2技能cd"]
scoreboard objectives add in3_add3_skillt dummy ["4层傀儡3技能cd"]
scoreboard objectives add in3_add3_skillc dummy ["4层傀儡3技能标记"]
scoreboard objectives add in3_add3_anti_cool dummy ["4层傀儡3技能反制冷却"]


scoreboard objectives add in3_boss4_skillc dummy ["4层boss技能标记"]

scoreboard objectives add in3_-4f_begint dummy ["地下4层开始计时"]

scoreboard objectives add in3_-4f_monsc dummy ["地下4层刷怪计数"]
scoreboard objectives add in3_-4f_sumt dummy ["地下4层刷怪计时"]
scoreboard objectives add in3_-4f_phase dummy ["地下4层阶段标记"]
scoreboard objectives add in3_-4f_time dummy ["地下4层整关计时"]

scoreboard objectives add in3_-4f_tptime dummy ["地下4层传送计时"]

bossbar add pld:instance3_0_boss4hp {"translate": "pl.bossbar.instance3_0.boss4"}
bossbar set pld:instance3_0_boss4hp color red
bossbar set pld:instance3_0_boss4hp max 1024

function pld:instances/instance3_0/floors/-4/skill/adds/load
function pld:instances/instance3_0/floors/-4/skill/death_penalty/load
function pld:instances/instance3_0/floors/-4/skill/double_sword/load
function pld:instances/instance3_0/floors/-4/skill/explode/load