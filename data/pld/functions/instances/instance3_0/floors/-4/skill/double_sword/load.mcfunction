#技能-无极双剑

bossbar add pld:instance3_0_ds_loading {"translate": "pl.bossbar.instance3_0.boss4_ds"}
bossbar set pld:instance3_0_ds_loading color yellow
bossbar set pld:instance3_0_ds_loading max 100

#bossbar add pld:instance3_0_ds2_loading {"translate": "pl.bossbar.instance3_0.boss4_ds2"}
#bossbar set pld:instance3_0_ds2_loading color yellow
#bossbar set pld:instance3_0_ds2_loading max 200


scoreboard objectives add in3_skill_ds_tick dummy ["反塔boss技能cd-无极双剑"]
scoreboard objectives add in3_skill_ds_load dummy ["反塔boss技能准备读条-无极双剑"]
scoreboard objectives add in3_skill_ds2_load dummy ["反塔boss技能结算读条-无极双剑"]