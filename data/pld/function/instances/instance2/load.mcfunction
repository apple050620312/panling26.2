#火焰魔王剩余血量
scoreboard objectives add instance2_hp dummy
#火焰魔王部位击伤标记
scoreboard objectives add instance2_weak dummy
scoreboard objectives add instance2_weak2 dummy

scoreboard objectives add instance2_weak_c dummy
scoreboard objectives add instance2_body dummy

#火焰魔王破甲提示
scoreboard objectives add instance2_armor dummy


#火焰魔王-阶段倒计时
scoreboard objectives add instance2_tick dummy
#火焰魔王-动画倒计时
scoreboard objectives add instance2_partic dummy
#火焰魔王-失敗累计次数
scoreboard objectives add instance2_failed dummy
#火焰魔王-灼焰伤害等级
scoreboard objectives add instance2_firelv dummy
#火焰魔王-剩余血量boss条
bossbar add pl:instance2_boss {"translate": "pl.bossbar.instance2_boss"}
bossbar set pl:instance2_boss visible false
bossbar set pl:instance2_boss color yellow
bossbar set pl:instance2_boss max 8

bossbar add pl:instance2_core {"translate": "pl.monster.instance2.blaze3"}
bossbar set pl:instance2_core max 1000
bossbar set pl:instance2_core color red
bossbar set pl:instance2_core visible false

bossbar add pl:instance2_core2 {"translate": "pl.monster.instance2.blaze3b"}
bossbar set pl:instance2_core2 name {"translate": "pl.monster.instance2.blaze3b"}
bossbar set pl:instance2_core2 max 1000
bossbar set pl:instance2_core2 color red
bossbar set pl:instance2_core2 visible false