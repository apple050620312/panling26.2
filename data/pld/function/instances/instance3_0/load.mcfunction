scoreboard objectives add in3_boss1_skillt dummy ["傀儡1技能cd"]
scoreboard objectives add in3_boss2_skillt dummy ["傀儡2技能cd"]
scoreboard objectives add in3_boss3_skillt dummy ["傀儡3技能cd"]

#地下一层额外：清理怪物
scoreboard objectives add in3_-1f_clear_m dummy ["地下1层清理怪物标记"]

scoreboard objectives add in3_-1f_monsc dummy ["地下1层刷怪计数"]
scoreboard objectives add in3_-1f_sumt dummy ["地下1层刷怪计时"]
scoreboard objectives add in3_-1f_killc dummy ["地下1层击杀计数"]
scoreboard objectives add in3_-1f_phase dummy ["地下1层阶段标记"]
scoreboard objectives add in3_-1f_time dummy ["地下1层整关计时"]
scoreboard objectives add in3_-1f_tptime dummy ["地下1层传送计时"]

scoreboard objectives add in3_-2f_monsc dummy ["地下2层刷怪计数"]
scoreboard objectives add in3_-2f_sumt dummy ["地下2层刷怪计时"]
scoreboard objectives add in3_-2f_killc dummy ["地下2层击杀计数"]
scoreboard objectives add in3_-2f_phase dummy ["地下2层阶段标记"]
scoreboard objectives add in3_-2f_time dummy ["地下2层整关计时"]
scoreboard objectives add in3_-2f_tptime dummy ["地下2层传送计时"]

scoreboard objectives add in3_boss3_skillc dummy ["3层boss技能标记"]
scoreboard objectives add in3_-3f_anti_cool dummy ["地下3层破甲冷却"]
scoreboard objectives add in3_-3f_monsc dummy ["地下3层刷怪计数"]
scoreboard objectives add in3_-3f_sumt dummy ["地下3层刷怪计时"]
scoreboard objectives add in3_-3f_killc dummy ["地下3层击杀计数"]
scoreboard objectives add in3_-3f_phase dummy ["地下3层阶段标记"]
scoreboard objectives add in3_-3f_time dummy ["地下3层整关计时"]
scoreboard objectives add in3_-3f_tptime dummy ["地下3层传送计时"]

scoreboard objectives add in3_tc dummy ["tellrawcheck"]


bossbar add pld:instance3_0_floor1 {"translate": "pl.bossbar.instance3_0.floor"}
bossbar set pld:instance3_0_floor1 color yellow
bossbar set pld:instance3_0_floor1 max 20

bossbar add pld:instance3_0_floor2 {"translate": "pl.bossbar.instance3_0.floor"}
bossbar set pld:instance3_0_floor2 color yellow
bossbar set pld:instance3_0_floor2 max 20

bossbar add pld:instance3_0_floor3 {"translate": "pl.bossbar.instance3_0.floor"}
bossbar set pld:instance3_0_floor3 color yellow
bossbar set pld:instance3_0_floor3 max 20

bossbar add pld:instance3_0_boss1hp {"translate": "pl.bossbar.instance3_0.boss1"}
bossbar set pld:instance3_0_boss1hp color red
bossbar set pld:instance3_0_boss1hp max 400

bossbar add pld:instance3_0_boss2hp {"translate": "pl.bossbar.instance3_0.boss2"}
bossbar set pld:instance3_0_boss2hp color red
bossbar set pld:instance3_0_boss2hp max 600

bossbar add pld:instance3_0_boss3hp {"translate": "pl.bossbar.instance3_0.boss3"}
bossbar set pld:instance3_0_boss3hp color red
bossbar set pld:instance3_0_boss3hp max 800


function pld:instances/instance3_0/floors/-4/load
