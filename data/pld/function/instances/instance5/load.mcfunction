#播放入场动画倒计时
scoreboard objectives add instance5_intick dummy ["假盘古入场倒计时"]

#进本缓冲
scoreboard objectives add instance5_reset dummy ["假盘古缓冲阶段判定"]


#阶段判定
scoreboard objectives add instance5_phase dummy ["假盘古阶段标记"]
#长老帮助计时
scoreboard objectives add instance5_helptk dummy ["假盘古长老帮助标记"]
#盘古血量
scoreboard objectives add instance5_bosshp dummy ["假盘古血量"]
#破阵数量
scoreboard objectives add instance5_skillx dummy ["破阵数量"]
#玩家复活次数
scoreboard objectives add instance5_relife dummy ["假盘古玩家复活次数"]

#bossbar
bossbar add pl:instance5_boss {"translate": "pl.bossbar.instance5_boss"}
bossbar set pl:instance5_boss color yellow
bossbar set pl:instance5_boss max 8
bossbar add pl:instance5_core {"translate": "pl.monster.instance5.boss_core"}
bossbar set pl:instance5_core max 1024
bossbar set pl:instance5_core color red

#bossbar
bossbar add pl:instance5_wind {"translate": "pl.bossbar.instance5_wind"}
bossbar set pl:instance5_wind color green
bossbar set pl:instance5_wind max 8

bossbar add pl:instance5_water {"translate": "pl.bossbar.instance5_water"}
bossbar set pl:instance5_water max 1000
bossbar set pl:instance5_water color blue

bossbar add pl:instance5_fire {"translate": "pl.bossbar.instance5_fire"}
bossbar set pl:instance5_fire max 1000
bossbar set pl:instance5_fire color red

bossbar add pl:instance5_light_left {"translate": "pl.bossbar.instance5_light_left"}
bossbar set pl:instance5_light_left max 500
bossbar set pl:instance5_light_left color yellow

bossbar add pl:instance5_light_right {"translate": "pl.bossbar.instance5_light_right"}
bossbar set pl:instance5_light_right max 500
bossbar set pl:instance5_light_right color yellow

bossbar add pl:instance5_swamp {"translate": "pl.bossbar.instance5_swamp"}
bossbar set pl:instance5_swamp max 4
bossbar set pl:instance5_swamp color purple

bossbar add pl:instance5_mountain {"translate": "pl.bossbar.instance5_mountain"}
bossbar set pl:instance5_mountain max 1000
bossbar set pl:instance5_mountain color white

bossbar add pl:instance5_sky {"translate": "pl.bossbar.instance5_sky"}
bossbar set pl:instance5_sky color white
bossbar set pl:instance5_sky max 1
bossbar set pl:instance5_sky value 0

bossbar add pl:instance5_earth {"translate": "pl.bossbar.instance5_earth"}
bossbar set pl:instance5_earth color white
bossbar set pl:instance5_earth max 1
bossbar set pl:instance5_earth value 0

#阵法启动标记
scoreboard objectives add instance5_light dummy ["震雷"]
scoreboard objectives add instance5_sky dummy ["乾天"]
scoreboard objectives add instance5_water dummy ["坎水"]
scoreboard objectives add instance5_mt dummy ["艮山"]
scoreboard objectives add instance5_fire dummy ["离火"]
scoreboard objectives add instance5_wind dummy ["巽风"]
scoreboard objectives add instance5_swamp dummy ["兑泽"]
scoreboard objectives add instance5_earth dummy ["坤地"]

#兑泽沼泽标记
scoreboard objectives add instance5_sppos1 dummy ["沼泽标记1"]
scoreboard objectives add instance5_sppos2 dummy ["沼泽标记2"]
scoreboard objectives add instance5_sppos3 dummy ["沼泽标记3"]
scoreboard objectives add instance5_sppos4 dummy ["沼泽标记4"]
scoreboard objectives add instance5_swampc dummy ["沼泽计数"]
scoreboard objectives add instance5_slimec dummy ["史莱姆数量"]
scoreboard objectives add instance5_slimes dummy ["史莱姆大小"]
scoreboard objectives add 8 dummy ["数字8"]
scoreboard players set #system 8 8

#乾天时间标记
scoreboard objectives add instance5_skyt dummy ["乾天计时"]
#巽风时间标记
scoreboard objectives add instance5_windt dummy ["巽风计时"]
#坤地时间标记
scoreboard objectives add instance5_eartht dummy ["坤地计时"]


#重生石数量统计
scoreboard objectives add instance5_relife_stone_count dummy ["重生石计数"]
