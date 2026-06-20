#常数值
scoreboard objectives add int dummy
scoreboard players set 2 int 2
scoreboard players set 4 int 4
scoreboard players set 5 int 5
scoreboard players set 10 int 10
scoreboard players set 20 int 20
scoreboard players set 100 int 100
scoreboard objectives add float1 dummy ["1位小数"]
scoreboard objectives add float2 dummy ["2位小数"]
scoreboard objectives add float4 dummy ["4位小数"]

scoreboard objectives add temp dummy
scoreboard objectives add temp2 dummy
scoreboard objectives add temp3 dummy
scoreboard objectives add temp4 dummy

#玩家个人计分板 
scoreboard objectives add level level
scoreboard objectives add hp health ["生命值"]
scoreboard objectives setdisplay belowName hp

scoreboard objectives add player_uuid0 dummy ["玩家uuid第一位"]
scoreboard objectives add player_uuid1 dummy ["玩家uuid第二位"]
scoreboard objectives add player_uuid2 dummy ["玩家uuid第三位"]
scoreboard objectives add player_uuid3 dummy ["玩家uuid第四位"]

scoreboard objectives add player_uid dummy ["玩家uid-系统分配"]

scoreboard objectives add player_online minecraft.custom:minecraft.leave_game ["玩家退出次数"]

scoreboard objectives add player_death deathCount ["玩家死亡统计"]
scoreboard objectives add spwanpoint dummy ["玩家记录点"]

scoreboard objectives add race dummy ["种族"]
scoreboard objectives add racefriend0 dummy ["神族友好度"]
scoreboard objectives add racefriend1 dummy ["妖族友好度"]
scoreboard objectives add racefriend2 dummy ["仙族友好度"]
scoreboard objectives add racefriend3 dummy ["战神族友好度"]
scoreboard objectives add racefriend4 dummy ["人族友好度"]

scoreboard objectives add supply5ticks dummy ["补给倒计时5ticks"]

scoreboard objectives add job dummy ["职业"]
scoreboard objectives add ld_count dummy ["炼丹漏斗内物品数量"]
scoreboard objectives add ldsuccess dummy ["炼丹成功"]

#成就点-资历
scoreboard objectives add achievement_point dummy ["成就点-资历"]

scoreboard objectives add main_mission0 dummy ["神族主线任务进度"]
scoreboard objectives add main_mission1 dummy ["妖族主线任务进度"]
scoreboard objectives add main_mission2 dummy ["仙族主线任务进度"]
scoreboard objectives add main_mission3 dummy ["战神族主线任务进度"]
scoreboard objectives add main_mission4 dummy ["人族主线任务进度"]
scoreboard objectives add side_mission0 dummy ["神族支线任务进度"]
scoreboard objectives add side_mission1 dummy ["妖族支线任务进度"]
scoreboard objectives add side_mission2 dummy ["仙族支线任务进度"]
scoreboard objectives add side_mission3 dummy ["战神族支线任务进度"]
scoreboard objectives add side_mission4 dummy ["人族支线任务进度"]
scoreboard objectives add truth_mission0 dummy ["神族真相任务进度"]
scoreboard objectives add truth_mission1 dummy ["妖族真相任务进度"]
scoreboard objectives add truth_mission2 dummy ["仙族真相任务进度"]
scoreboard objectives add truth_mission3 dummy ["战神族真相任务进度"]
scoreboard objectives add truth_mission4 dummy ["人族真相任务进度"]

scoreboard objectives add raceeffect dummy "种族庇佑标记"

scoreboard objectives add in_test_check dummy ["判据-是否在试炼内"]

scoreboard objectives add dragon dummy "青龙试炼通过"
scoreboard objectives add bird dummy "朱雀试炼通过"
scoreboard objectives add tiger dummy "白虎试炼通过"
scoreboard objectives add turtle dummy "玄武试炼通过"

scoreboard objectives add dragon_check dummy "是否进青龙祭坛"
scoreboard objectives add bird_check dummy "是否进朱雀祭坛"
scoreboard objectives add tiger_check dummy "是否进白虎祭坛"
scoreboard objectives add turtle_check dummy "是否进玄武祭坛"

#记分板-朱雀计时
scoreboard objectives add birdtime dummy ["朱雀计时"]
scoreboard objectives add bird_tickxs dummy ["朱雀倒计时显示"]
scoreboard objectives add bird_kill teamkill.dark_red ["朱雀怪物击杀检测"]
#记分板-玄武门票
scoreboard objectives add turtle_incheck dummy ["玄武门票"]


#记分板-玩家锻造成功
scoreboard objectives add dzsuccess dummy ["玩家锻造成功"]

#记分板-通用成功判据
scoreboard objectives add success dummy ["通用成功判据"]

scoreboard objectives add honor dummy ["功勋点"]

scoreboard objectives add ex_shen dummy ["神族支线标记"]

scoreboard objectives add ex_ren dummy ["人族支线标记"]
scoreboard objectives add re_kill_bunny minecraft.killed:minecraft.rabbit ["sa兔子标记"]

scoreboard objectives add ex_yao dummy ["妖族支线标记"]

scoreboard objectives add ex_xian dummy ["仙族支线标记"]
scoreboard objectives add ex_xiantick dummy ["仙族支线时间标记"]

scoreboard objectives add ex_zhan dummy ["战神族支线标记"]
scoreboard objectives add ex_zhan_battle dummy ["战神族支线标记-打架"]

scoreboard objectives add ex_sword dummy ["剑意任务标记"]
scoreboard objectives add ex_sword_earth dummy ["地之剑意标记"]
scoreboard objectives add ex_sword_sky dummy ["天之剑意标记"]
scoreboard objectives add ex_sword_ren dummy ["人之剑意标记"]

scoreboard objectives add copper_chest dummy ["铜宝箱标记"]
scoreboard objectives add silver_chest dummy ["银宝箱标记"]
scoreboard objectives add gold_chest dummy ["金宝箱标记"]

scoreboard objectives add gotten_helmet61 dummy ["混天绫标记"]
scoreboard objectives add gotten_helmet62 dummy ["玄凤翎标记"]
scoreboard objectives add gotten_helmet63 dummy ["太虚灵盔标记"]
scoreboard objectives add gotten_chest6 dummy ["太初神甲标记"]
scoreboard objectives add gotten_chest62 dummy ["九黎战铠标记"]
scoreboard objectives add gotten_chest63 dummy ["玄金羽泪标记"]
scoreboard objectives add gotten_leggings6 dummy ["紫砂缠标记"]
scoreboard objectives add gotten_leg62 dummy ["甲兵释司标记"]
scoreboard objectives add gotten_leg63 dummy ["掠火焱翼标记"]
scoreboard objectives add gotten_boots61 dummy ["风火轮标记"]
scoreboard objectives add gotten_boots62 dummy ["韦驮天标记"]
scoreboard objectives add gotten_boots63 dummy ["九天玄羽标记"]
scoreboard objectives add gotten_sword6 dummy ["金箍棒标记"]
scoreboard objectives add gotten_bow6 dummy ["逐日标记"]
scoreboard objectives add gotten_furnace6 dummy ["混元神鼎标记"]

scoreboard objectives add sneak_check minecraft.custom:minecraft.sneak_time ["shift标记"]
scoreboard objectives add right_click_check minecraft.used:minecraft.carrot_on_a_stick ["右键标记"]
scoreboard objectives add right_click_run minecraft.used:minecraft.carrot_on_a_stick ["右键-最终激活条目"]

#scoreboard objectives add right_hold_check minecraft.used:minecraft.carrot_on_a_stick ["右键长按标记"]

#环城记分板
scoreboard objectives add parkour_middle_in dummy ["环城跑酷-进入标记"]
scoreboard objectives add parkour_middle_time dummy ["环城跑酷-时间记录"]
scoreboard objectives add parkour_middle_20 dummy ["环城跑酷-时间记录20"]
scoreboard objectives add parkour_middle_skill dummy ["环城跑酷-技巧记录"]
scoreboard objectives add parkour_middle_skill_check dummy ["环城跑酷-技巧检查"]

#支线
scoreboard objectives add te17_check dummy "提交晶铁标记"
scoreboard objectives add ex_te32 dummy "梓决任务标记"
scoreboard objectives add ex_sunday dummy ["辛齐天任务标记"]
scoreboard objectives add ex_doctor dummy "杀人医生标记"
scoreboard objectives add ex_murder dummy "杀人客栈老板标记"

scoreboard objectives add attack_damage1_murder dummy ["杀人客栈支线-近战攻击增加"]
scoreboard objectives add murder_zf_str dummy ["杀人客栈支线-阵法强度增加"]
scoreboard objectives add archer_damage1_murder dummy ["杀人客栈支线-箭矢强度增加"]
#战神支线提供阵法强度
scoreboard objectives add exzhan_zf_str dummy ["战神支线阵法强度"]
#战神支线提供箭矢强度
scoreboard objectives add archer_damage1_exzhan dummy ["战神支线箭矢强度"]
#战神支线提供近战攻击
scoreboard objectives add attack_damage1_exzhan dummy ["战神支线近战攻击"]

scoreboard objectives add monster_health dummy ["怪物血量"]
scoreboard objectives add monster_max_health dummy ["怪物最大血量"]

#怪物生成用scb
scoreboard objectives add monster_count dummy ["怪物数量统计"]

#怪物id
scoreboard objectives add monster_id dummy ["怪物id"]

#异步判据用变量
scoreboard objectives add tick_count dummy ["异步判据用变量"]
scoreboard objectives add tick_operation dummy ["异步判据用变量-计算"]

#loot用记分板
scoreboard objectives add loot_count dummy ["掉落数量"]

#倒计时触发器
scoreboard objectives add time_trigger dummy

#人族村庄bgm时间倒数
scoreboard players set #5ticks_bgm_ren_all time_trigger 725
#叶灵谷bgm时间倒数
scoreboard players set #5ticks_bgm_yao_all time_trigger 450
#蜀山bgm时间倒数
scoreboard players set #5ticks_bgm_xian_all time_trigger 340
#战神驻地bgm时间倒数
scoreboard players set #5ticks_bgm_zhan_all time_trigger 590
#昆仑bgm时间倒数
scoreboard players set #5ticks_bgm_shen_all time_trigger 335
#皇城bgm时间倒数
scoreboard players set #5ticks_bgm_middle_all time_trigger 600
#蓬莱bgm时间倒数
scoreboard players set #5ticks_bgm_penglai_all time_trigger 600

#时间初始化
scoreboard players set #5ticks_bgm_ren_now time_trigger 100
scoreboard players set #5ticks_bgm_yao_now time_trigger 100
scoreboard players set #5ticks_bgm_xian_now time_trigger 100
scoreboard players set #5ticks_bgm_zhan_now time_trigger 100
scoreboard players set #5ticks_bgm_shen_now time_trigger 100
scoreboard players set #5ticks_bgm_middle_now time_trigger 100
scoreboard players set #5ticks_bgm_penglai_now time_trigger 100


team add normal
team modify normal color yellow
team modify normal friendlyFire false
team modify normal deathMessageVisibility always

team add monster ["怪物队伍"]
team modify monster color dark_red
team modify monster friendlyFire false
