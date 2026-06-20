bossbar add pld:instance3_0_ep_loading {"translate": "pl.bossbar.instance3_0.boss4_ep"}
bossbar set pld:instance3_0_ep_loading color yellow


#bossbar add pld:instance3_0_ep2_loading {"translate": "pl.bossbar.instance3_0.boss4_ep2"}
#bossbar set pld:instance3_0_ep2_loading color yellow
#bossbar set pld:instance3_0_ep2_loading max 400


scoreboard objectives add in3_skill_ep_load dummy ["反塔boss技能读条-定轨阴阳"]
scoreboard objectives add in3_skill_ep2_load dummy ["反塔boss技能读条-定轨阴阳2"]

scoreboard objectives add in3_skill_ep_count dummy ["反塔boss技能-定轨阴阳-是否首次"]
scoreboard objectives add in3_skill_ep_mark dummy ["反塔boss技能-定轨阴阳-爆炸色标记"]
