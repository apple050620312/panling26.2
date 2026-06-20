#哭霸血量
scoreboard objectives add instance4_bosshp dummy
#哭霸金乌计数
scoreboard objectives add instance4_bird dummy 
#哭霸结算倒计时
scoreboard objectives add instance4_tick dummy 
#进本判据
scoreboard objectives add instance4_tag dummy
#bossbars
bossbar add pld:instance4_bosshp {"translate": "pl.bossbar.instance4_boss"}
bossbar set pld:instance4_bosshp max 7
bossbar set pld:instance4_bosshp color yellow

bossbar add pld:instance4_waterboss {"translate":"pl.monster.instance4.elder_guardian"}
bossbar set pld:instance4_waterboss max 500
bossbar set pld:instance4_waterboss color red
#山神使用标记
scoreboard objectives add instance4_mouth dummy

#山神被投食价值标记
scoreboard objectives add instance4_food dummy
