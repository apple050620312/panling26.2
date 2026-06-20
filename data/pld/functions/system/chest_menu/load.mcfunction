scoreboard objectives add player_open_enderchest minecraft.custom:minecraft.open_enderchest ["检查玩家打开末影箱"]
scoreboard objectives add player_open_enderchest_delay dummy ["玩家打开末影箱延迟"]
scoreboard objectives add screen dummy ["末影箱菜单页面"] 
scoreboard objectives add screen_chest_page dummy ["末影箱储存页面页码"] 
scoreboard objectives add screen_mail_page dummy ["末影箱邮件页面页码"] 
scoreboard objectives add click dummy ["末影箱菜单点击检查"]
scoreboard objectives add chests_enabled dummy ["末影箱菜单仓库解锁数量"]
scoreboard objectives add player_last_rot0 dummy
scoreboard objectives add player_last_rot1 dummy
execute unless score system_mails_id int matches 0.. run scoreboard players set system_mails_id int 0
scoreboard objectives add player_mail_id dummy ["末影箱菜单-玩家已获取邮件id"]

# 0&未赋值：actionbar 1：tellraw
scoreboard objectives add info_pos_weapon_skill dummy ["玩家武器技能信息显示位置"]
# 0&未赋值：tellraw 1：actionbar
scoreboard objectives add info_pos_armor_skill dummy ["玩家套装效果信息显示位置"]
# 0&未赋值：tellraw 1：actionbar
scoreboard objectives add info_pos_zf dummy ["玩家阵法信息显示位置"]

scoreboard objectives add armor2 dummy ["护甲-二位小数"]
scoreboard objectives add armor_display_int_part dummy
scoreboard objectives add armor_display_fraction_part dummy
scoreboard objectives add armor_toughness2 dummy ["护甲韧性-二位小数"]
scoreboard objectives add armor_toughness_display_int_part dummy
scoreboard objectives add armor_toughness_display_fraction_part dummy
scoreboard objectives add knockback_resistance_percent dummy ["抗击退率-百分比"]
scoreboard objectives add max_health2 dummy ["最大生命-二位小数"]
scoreboard objectives add max_health_display_int_part dummy
scoreboard objectives add max_health_display_fraction_part dummy
scoreboard objectives add movement_speed4 dummy ["移动速度-四位小数"]   
scoreboard objectives add movement_speed_percent dummy ["移动速度-百分比"]           
scoreboard objectives add attack_damage_display2 dummy ["近战攻击-二位小数"]
scoreboard objectives add attack_damage_display_int_part dummy
scoreboard objectives add attack_damage_display_fraction_part dummy
scoreboard objectives add archer_damage_display_int_part dummy
scoreboard objectives add archer_damage_display_fraction_part dummy

scoreboard objectives add all_protection_percent dummy ["全伤害减免-百分比"]
scoreboard objectives add arrow_protection_percent dummy ["弹射物伤害减免-百分比"]
scoreboard objectives add fire_protection_percent dummy ["火焰伤害减免-百分比"]
scoreboard objectives add magic_protection_percent dummy ["术法伤害减免-百分比"]

##screen 页面id分配
#0-主菜单界面
#1-个人信息菜单界面
#2-储存内容菜单界面
#3-邮箱界面
#4-设置界面

#102-外观界面
#10201-尾迹界面

#200-220 箱子们

#300

#400