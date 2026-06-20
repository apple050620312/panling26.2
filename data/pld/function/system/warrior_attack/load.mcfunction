scoreboard objectives add entity_hurttime10_count dummy ["统计此时hurttime为10的实体数量"] 

scoreboard objectives add skill_success dummy ["武器技激活标记"]

#玩家攻击力 二位小数
scoreboard objectives add player_2atk dummy
#玩家近战攻速 一位小数
scoreboard objectives add attack_speed1 dummy ["玩家近战攻速-一位小数"]
scoreboard objectives add attack_scool_down_tick dummy ["玩家近战冷却tick"]


#玩家近战攻击 一位小数
scoreboard objectives add attack_damage1 dummy ["玩家近战攻击-一位小数"]

scoreboard objectives add attack_damage1_enchanted dummy ["附灵提供近战攻击-一位小数"]

scoreboard objectives add attack_damage_effect dummy ["力量效果提供的近战攻击"]
scoreboard objectives add attack_damage_effect_weak dummy ["虚弱效果提供的近战攻击"]
#最大血量 四位小数
scoreboard objectives add entity_4max_health dummy
#当前血量 四位小数
scoreboard objectives add entity_4health dummy

#盔甲值 二位小数
scoreboard objectives add entity_2armor dummy
#盔甲韧性 二位小数
scoreboard objectives add entity_2toughness dummy
#保护附魔等级
scoreboard objectives add entity_enchant_protection dummy
#抗性提升等级
scoreboard objectives add entity_effect_resistance dummy

#伤害计算中间量
scoreboard objectives add entity_hurt_temp dummy

#最终伤害
scoreboard objectives add entity_hurt_final dummy

#玩家造成伤害 一位小数
scoreboard objectives add player_cause_1damage custom:damage_dealt
#玩家造成伤害 二位小数
scoreboard objectives add player_cause_2damage dummy

scoreboard objectives add sprinting custom:minecraft.sprint_one_cm ["疾跑检查"]

#玩家面向方向 四位小数
scoreboard objectives add player_xrot4 dummy
scoreboard objectives add player_yrot4 dummy
scoreboard objectives add player_yrot_4sin dummy
scoreboard objectives add player_yrot_-4sin dummy
scoreboard objectives add player_yrot_4cos dummy
scoreboard objectives add player_yrot_-4cos dummy

#击退动量 一位小数
scoreboard objectives add konck_power1 dummy
scoreboard players set #system konck_power1 4

scoreboard objectives add knock_motion_4x dummy
scoreboard objectives add knock_motion_4y dummy
scoreboard objectives add knock_motion_4z dummy

scoreboard objectives add target_motion_4x dummy
scoreboard objectives add target_motion_4y dummy
scoreboard objectives add target_motion_4z dummy

scoreboard objectives add final_motion_4x dummy
scoreboard objectives add final_motion_4y dummy
scoreboard objectives add final_motion_4z dummy


#横扫冷却
scoreboard objectives add sweep_cool dummy

#skill
#武器技冷却
scoreboard objectives add weapon_skill_cool_5ticks dummy

#武器技-axe2
scoreboard objectives add weapon_skill_axe2_5ticks dummy

#武器技-axe4
scoreboard objectives add weapon_skill_axe4_5ticks dummy
#武器技-axe4-流血标记记分板
scoreboard objectives add blooded dummy
#武器技-axe4-流血uid记分板
scoreboard objectives add blood_uid dummy
#武器技-axe4-流血倍率记分板
scoreboard objectives add weapon_skill_axe4_blooding_multiplier dummy
scoreboard players set #system weapon_skill_axe4_blooding_multiplier 50
#武器技-axe4-流血间隔记分板
scoreboard objectives add weapon_skill_axe4_blooding_next_5ticks dummy
scoreboard players set #system weapon_skill_axe4_blooding_next_5ticks 10

#武器技-axe5
scoreboard objectives add weapon_skill_axe5_5ticks dummy


#武器技-sword4 0-阴 1-阳
scoreboard objectives add weapon_skill_sword4_switch dummy

#武器技-sword5 幻剑记分板-剩余时间
scoreboard objectives add weapon_skill_sword5_as_5ticks dummy
#武器技-sword5 幻剑记分板-可造成伤害 2位小数
scoreboard objectives add weapon_skill_sword5_as_2damage dummy
#武器技-sword5 幻剑记分板-下一次幻剑下落延迟时间
scoreboard objectives add weapon_skill_sword5_next_5ticks dummy

#武器技-sword6 主动技能持续时间
scoreboard objectives add weapon_skill_sword6_main_5ticks dummy
#武器技-sword6 主动技能冷却时间
scoreboard objectives add weapon_skill_sword6_main_cool_5ticks dummy
#武器技-sword6 主动技能追击冷却时间
scoreboard objectives add weapon_skill_sword6_main_pursuit_cool_5ticks dummy

#武器技-sword6 被动技能持续时间
scoreboard objectives add weapon_skill_sword6_positive_5ticks dummy
#武器技-sword6 被动技能冷却时间
scoreboard objectives add weapon_skill_sword6_positive_cool_5ticks dummy
#武器技-sword6 被动技能等级
scoreboard objectives add weapon_skill_sword6_lvl dummy
#武器技-sword6 被动提升率
scoreboard players set #weapon_skill_sword6_positive_multiply_base int 15


#debuff
#眩晕剩余时间 5ticks
scoreboard objectives add vertigo_5ticks dummy

#灼焰标记
scoreboard objectives add weapon_burn_tag dummy



