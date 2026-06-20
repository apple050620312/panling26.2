#pvp事件状态 0 无事发生 1 2 pvp1 3 4 pvp2 5 6 pvp3 奇数为准备阶段，偶数是已开始
#准备阶段和场次均为15min 15*60*20tick
scoreboard objectives add pvpevent dummy ["世界-pvp事件状态"]
scoreboard objectives add pvpevent_tick dummy ["世界-pvp事件状态倒计时"]
scoreboard objectives add pvpevent_all dummy ["世界-pvp事件状态计时-固定值"]
#scoreboard players set #system pvpevent_all 18000
#异步
scoreboard players set #system pvpevent_all 4500


scoreboard objectives add pvp1_delay dummy ["世界-pvp1事件冷却"]
scoreboard objectives add pvp2_delay dummy ["世界-pvp2事件冷却"]
scoreboard objectives add pvp3_delay dummy ["世界-pvp3事件冷却"]

scoreboard objectives add pvp_delay_all dummy ["世界-pvp事件冷却-固定值"]
#scoreboard players set #system pvp_delay_all 144000
#异步
scoreboard players set #system pvp_delay_all 36000


scoreboard objectives add supply_add_shen dummy ["世界-神族补给变动标记"]
scoreboard objectives add supply_add_yao dummy ["世界-妖族补给变动标记"]
scoreboard objectives add supply_add_xian dummy ["世界-仙族补给变动标记"]
scoreboard objectives add supply_add_zhan dummy ["世界-战神族补给变动标记"]
scoreboard objectives add supply_add_ren dummy ["世界-人族补给变动标记"]

scoreboard objectives add supply_tick_shen dummy ["世界-神族补给变动时间"]
scoreboard objectives add supply_tick_yao dummy ["世界-妖族补给变动时间"]
scoreboard objectives add supply_tick_xian dummy ["世界-仙族补给变动时间"]
scoreboard objectives add supply_tick_zhan dummy ["世界-战神族补给变动时间"]
scoreboard objectives add supply_tick_ren dummy ["世界-人族补给变动时间"]

scoreboard objectives add supply_tick_all dummy ["世界-全体补给变动时间-固定值"]
#scoreboard players set #system supply_tick_all 288000
#异步
scoreboard players set #system supply_tick_all 72000

#双方玩家数量
scoreboard objectives add pvp_atk_count dummy ["玩家进攻方隊伍标记"]
scoreboard objectives add pvp_def_count dummy ["玩家防守方隊伍标记"]
#0-人数相等 -1 -2 -3 进攻方人数多 1 2 3 防守方人多 一倍 一点五倍 两倍
scoreboard objectives add pvp_pl_stat dummy ["玩家数量状态"]
scoreboard objectives add operation_scb1 dummy ["计算用1"]
scoreboard objectives add operation_scb2 dummy ["计算用2"]

#pvp1：1 2 pvp2：3 4 pvp3：5 6 奇数为进攻方 偶数为防守方
scoreboard objectives add pvp_team dummy ["玩家参与隊伍标记"]

#标记-玩家在战役中 1为在战役中
scoreboard objectives add inpvp dummy ["标记-玩家在战役中"]
#标记-玩家进入战斗场地
scoreboard objectives add inpvp_area dummy ["标记-玩家进入战斗场地"]
#标记-玩家在屬性购买区域内
scoreboard objectives add inbuy_area dummy ["标记-玩家在屬性购买区域内"]
#玩家重生时间倒数
scoreboard objectives add pvp_relife_tick dummy ["玩家重生时间倒数"]
#玩家战场点数
scoreboard objectives add pvp_point dummy ["玩家战场点数"]
#玩家战场点数获取次数
scoreboard objectives add pvp_point_get dummy ["玩家本次获取战场点数次数"]
#玩家战场点数上限
scoreboard objectives add pvp_point_get_max dummy ["玩家本次获取战场点数次数上限"]


#标记-玩家当前已升级项目
scoreboard objectives add up_bow dummy ["标记-玩家当前已升级项目-远程武器"]
scoreboard objectives add up_axe dummy ["标记-玩家当前已升级项目-近战武器"]
scoreboard objectives add up_bless dummy ["标记-玩家当前已升级项目-祝福"]
scoreboard objectives add up_head dummy ["标记-玩家当前已升级项目-头盔"]
scoreboard objectives add up_chest dummy ["标记-玩家当前已升级项目-胸甲"]
scoreboard objectives add up_legs dummy ["标记-玩家当前已升级项目-护腿"]
scoreboard objectives add up_feet dummy ["标记-玩家当前已升级项目-靴子"]

#玩家死亡前击杀数-红击杀绿
scoreboard objectives add pvp_killc_r teamkill.green ["玩家死亡前击杀数-红击杀绿"]
#玩家击杀检查-红击杀绿
scoreboard objectives add pvp_kill_r teamkill.green ["玩家击杀-红击杀绿"]

#玩家死亡前击杀数-绿击杀红
scoreboard objectives add pvp_killc_g teamkill.red ["玩家死亡前击杀数-绿击杀红"]
#玩家击杀检查-绿击杀红
scoreboard objectives add pvp_kill_g teamkill.red ["玩家击杀-绿击杀红"]

#pvp1 上次胜利方 3战神族 4人族
scoreboard objectives add pvp1_last_win dummy ["pvp1上次胜利方"]
#pvp1 护送供品车数量
scoreboard objectives add pvp1_delivered dummy ["pvp1护送供品车数量"]

#pvp1 地图交互相关
scoreboard objectives add pvp1_fix_bridge1 dummy ["pvp1修复桥梁1"]
scoreboard objectives add pvp1_fix_bridge2 dummy ["pvp1修复桥梁2"]
scoreboard objectives add pvp1_fix_rail1 dummy ["pvp1修复铁轨1"]
scoreboard objectives add pvp1_fix_rail2 dummy ["pvp1修复铁轨2"]
scoreboard objectives add pvp1_water1 dummy ["pvp1水炮1"]
scoreboard objectives add pvp1_water2 dummy ["pvp1水炮2"]

scoreboard objectives add pvp1_deliveract dummy ["pvp1供品送达动画"]

scoreboard objectives add pvp1_tnt_cool dummy ["pvp1炸弹冷却时间"]


#pvp1 战役时间-分钟
scoreboard objectives add pvp1_event_min dummy ["pvp2战役时间-分钟"]
scoreboard objectives add pvp1_middle dummy ["计算中间量"]

#pvp1 时间 护送供品车数量
bossbar add pl:pvp1_time ["战役时间"]
execute store result bossbar pl:pvp1_time max run scoreboard players get #system pvpevent_all
bossbar set pl:pvp1_time color red
bossbar set pl:pvp1_time name {"translate":"pl.bossbar.pvp1.time"}

bossbar add pl:pvp1_delivered ["护送供品车数量"]
bossbar set pl:pvp1_delivered max 2
bossbar set pl:pvp1_delivered color green
bossbar set pl:pvp1_delivered name {"translate":"pl.bossbar.pvp1.delivered"}

#pvp2 
scoreboard objectives add pvp2_atkpotion dummy ["标记-玩家已购买-冲锋丸"]

#pvp2 上次胜利方 1妖族 4人族
scoreboard objectives add pvp2_last_win dummy ["pvp2上次胜利方"]

#pvp2 砍树进度
scoreboard objectives add pvp2_kill_tree dummy ["pvp2砍树进度-计数"]
#400tick砍倒一颗树
scoreboard objectives add pvp2_kill_tree1 dummy ["pvp2砍树进度tick-1"]
scoreboard objectives add pvp2_kill_tree2 dummy ["pvp2砍树进度tick-2"]
scoreboard objectives add pvp2_kill_tree3 dummy ["pvp2砍树进度tick-3"]
scoreboard objectives add pvp2_kill_tree4 dummy ["pvp2砍树进度tick-4"]
scoreboard objectives add pvp2_kill_tree5 dummy ["pvp2砍树进度tick-5"]
scoreboard objectives add pvp2_kill_tree6 dummy ["pvp2砍树进度tick-6"]
scoreboard objectives add pvp2_kill_tree7 dummy ["pvp2砍树进度tick-7"]
scoreboard objectives add pvp2_kill_tree8 dummy ["pvp2砍树进度tick-8"]
scoreboard objectives add pvp2_kill_tree9 dummy ["pvp2砍树进度tick-9"]
scoreboard objectives add pvp2_kill_tree10 dummy ["pvp2砍树进度tick-10"]
scoreboard objectives add pvp2_kill_tree11 dummy ["pvp2砍树进度tick-11"]

#pvp2 随机道具时间
scoreboard objectives add pvp2_spitem_tick dummy ["pvp2随机道具时间"]

#pvp2 战役时间-分钟
scoreboard objectives add pvp2_event_min dummy ["pvp2战役时间-分钟"]
scoreboard objectives add pvp2_middle dummy ["计算中间量"]
scoreboard objectives add honor_middle dummy ["功勋计算中间量"]
scoreboard objectives add honor_all dummy ["个人功勋结算"]

scoreboard objectives add 300 dummy ["240"]
scoreboard players set #system 300 300

#bossbar进度
#pvp2 时间 砍树进度
bossbar add pl:pvp2_time ["战役时间"]
execute store result bossbar pl:pvp2_time max run scoreboard players get #system pvpevent_all

bossbar set pl:pvp2_time color green
bossbar set pl:pvp2_time name {"translate":"pl.bossbar.pvp2.time"}

bossbar add pl:pvp2_kill_tree ["砍树进度"]
bossbar set pl:pvp2_kill_tree max 11
bossbar set pl:pvp2_kill_tree color red
bossbar set pl:pvp2_kill_tree name {"translate":"pl.bossbar.pvp2.kill_tree"}

#pvp3
scoreboard objectives add pvp3_defpotion dummy ["标记-玩家已购买-坚甲丸"]

#pvp3 战役时间-分钟
scoreboard objectives add pvp3_event_min dummy ["pvp3战役时间-分钟"]
scoreboard objectives add pvp3_middle dummy ["计算中间量"]
#pvp3 族人逃脱进度-计时
scoreboard objectives add pvp3_next_save dummy ["pvp3族人逃脱进度-计时"]
scoreboard objectives add pvp3_save_count dummy ["pvp3族人逃脱进度-计数"]
#pvp3 防守奖励 2 1 0
scoreboard objectives add pvp3_defense_reward dummy ["pvp3防守奖励"]



#pvp3 上次胜利方 1妖族 2仙族
scoreboard objectives add pvp3_last_win dummy ["pvp3上次胜利方"]

#pvp3 时间 救出妖族族人进度
bossbar add pl:pvp3_time ["战役时间"]
execute store result bossbar pl:pvp3_time max run scoreboard players get #system pvpevent_all

bossbar set pl:pvp3_time color green
bossbar set pl:pvp3_time name {"translate":"pl.bossbar.pvp3.time"}

bossbar add pl:pvp3_save_count ["救出妖族族人进度"]
bossbar set pl:pvp3_save_count max 15
bossbar set pl:pvp3_save_count color red
bossbar set pl:pvp3_save_count name {"translate":"pl.bossbar.pvp3.save_count"}

bossbar add pl:pvp3_next_save_time ["当前妖族族人逃跑进度"]
bossbar set pl:pvp3_next_save_time max 600
bossbar set pl:pvp3_next_save_time color yellow
bossbar set pl:pvp3_next_save_time name {"translate":"pl.bossbar.pvp3.next_save_time"}

#参战隊伍
team add attack ["战役进攻方"]
team modify attack color red
team modify attack friendlyFire false

team add defence ["战役防守方"]
team modify defence color green
team modify defence friendlyFire false


scoreboard objectives add 1200 dummy ["数字-1200"]
scoreboard players set #system 1200 1200


scoreboard objectives add pvp3_trans_tower dummy ["pvp3鎮妖塔反转标记"]
scoreboard objectives add pvp3_trans_tick dummy ["pvp3鎮妖塔反转时间"]

scoreboard objectives add pvp3_trans_cd dummy ["pvp3鎮妖塔反转总时间"]
#scoreboard players set #system pvp3_trans_cd 144000
#异步
scoreboard players set #system pvp3_trans_cd 36000



#成就-战役胜利计数
scoreboard objectives add pvp_win_count dummy ["战役胜利计数"]


