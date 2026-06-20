#技能-处决

bossbar add pld:instance3_0_dp_loading {"translate": "pl.bossbar.instance3_0.boss4_dp"}
bossbar set pld:instance3_0_dp_loading color yellow
bossbar set pld:instance3_0_dp_loading max 100


scoreboard objectives add in3_skill_dp_tick dummy ["反塔boss技能cd-处决"]
scoreboard objectives add in3_skill_dp_load dummy ["反塔boss技能读条-处决"]
scoreboard objectives add in3_skill_dp_mark dummy ["反塔boss技能标记-处决"]
#场上最多存在一个拥有处决标记的玩家