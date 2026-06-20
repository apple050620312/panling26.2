scoreboard objectives add instance1_tick dummy ["始皇陵计时标记"]
scoreboard objectives add instance1_stage dummy ["始皇陵棺椁阶段"]
scoreboard objectives add instance1_phase dummy ["始皇陵单次裂棺阶段标记"]
scoreboard objectives add instance1_color dummy ["始皇陵守护颜色"]
scoreboard objectives add kill_green minecraft.killed:minecraft.skeleton ["击杀骷髅标记"]
scoreboard objectives add kill_red minecraft.killed:minecraft.husk ["击杀兵马俑标记"]
scoreboard objectives add kill_white minecraft.killed:minecraft.zombie ["击杀僵尸标记"]
scoreboard objectives add instance1_failed dummy ["始皇陵阶段失敗数量"]
scoreboard objectives add instance1_fail1 dummy ["始皇陵1失敗标记"]
scoreboard objectives add instance1_fail2 dummy ["始皇陵2失敗标记"]
scoreboard objectives add instance1_p1in dummy ["始皇陵1进入标记"]
scoreboard objectives add instance1_p2in dummy ["始皇陵2进入标记"]


bossbar add pl:instance1_stage {"translate":"pl.bossbar.instance1_stage"}
bossbar set pl:instance1_stage color white
bossbar set pl:instance1_stage max 9
bossbar set pl:instance1_stage visible false
bossbar add pl:instance1_boss {"translate": "pl.bossbar.instance1_boss"}
bossbar set pl:instance1_boss color yellow
bossbar set pl:instance1_boss max 800
bossbar set pl:instance1_stage visible false