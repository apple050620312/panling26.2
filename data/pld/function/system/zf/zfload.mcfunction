#抗毒剩余时间
scoreboard objectives add kangdu dummy ["抗毒时间"]

#记分板-玩家试炼判据
scoreboard objectives add element_cannon dummy

#记分板-阵法冷却
#scoreboard objectives add zf_cool dummy ["玩家阵法冷却时间"]

scoreboard objectives add zf_cool_metal dummy ["玩家金阵法冷却时间"]
scoreboard objectives add zf_cool_wood dummy ["玩家木阵法冷却时间"]
scoreboard objectives add zf_cool_water dummy ["玩家水阵法冷却时间"]
scoreboard objectives add zf_cool_fire dummy ["玩家火阵法冷却时间"]
scoreboard objectives add zf_cool_earth dummy ["玩家土阵法冷却时间"]

scoreboard objectives add zf_partice_metal dummy ["玩家金阵法粒子标记"]
scoreboard objectives add zf_partice_wood dummy ["玩家木阵法粒子标记"]
scoreboard objectives add zf_partice_water dummy ["玩家水阵法粒子标记"]
scoreboard objectives add zf_partice_fire dummy ["玩家火阵法粒子标记"]
scoreboard objectives add zf_partice_earth dummy ["玩家土阵法粒子标记"]


#记分板-阵法等级
scoreboard objectives add zf_lvl dummy ["玩家阵法等级"]

#记分板-阵法炉子
scoreboard objectives add zf_hold_ldl dummy ["玩家持有炼丹炉种类"]
#记分板-炉子使用
#记分板-阵法冷却显示
scoreboard objectives add zf_coolXS dummy ["玩家阵法冷却时间显示"]
#记分板-计算中间量
scoreboard objectives add zjl dummy ["计算用中间量"]
#记分板-释放玩家标记
scoreboard objectives add sfwj dummy ["释放玩家标记"]
#记分板-被标记
scoreboard objectives add bbj dummy ["被标记"]
#记分板-阵法成功
scoreboard objectives add zfsuccess dummy ["阵法成功"]
#记分板-怪物种类
scoreboard objectives add monstertype dummy ["怪物种类"]
#记分板-目标信息
scoreboard objectives add mbxx dummy ["目标信息"]
#记分板-副手元素数量
scoreboard objectives add element_offhand dummy ["副手元素数量"]


#记分板-阵法强度统计
scoreboard objectives add zf_str dummy ["阵法强度"]
scoreboard objectives add zf_str_middle dummy ["阵法强度计算中间量"]
scoreboard objectives add zf_cool_reduce dummy ["阵法冷却缩减"]
    #阵法冷却缩减系统上限
scoreboard players set #system_limit zf_cool_reduce 50

scoreboard objectives add equipment_consume_reduce_multiply_base dummy ["武器提供-阵法不消耗率"]
scoreboard objectives add zf_consume_reduce dummy ["阵法不消耗率"]
    #阵法不消耗率系统上限
scoreboard players set #system_limit zf_consume_reduce 50


scoreboard objectives add zf_cool_middle dummy ["阵法冷却计算中间量"]
scoreboard objectives add zf_l6 dummy ["阵法增幅量"]

#记分板-怪物抗性
scoreboard objectives add monster_resis dummy ["怪物状态：抗性提升"]

#记分板-怪物抗性
scoreboard objectives add damage_middle dummy ["伤害计算用中间量"] 

scoreboard objectives add ldl6success dummy ["混元鼎特效-元素不消耗"]

#百分比
scoreboard objectives add percent dummy

#记分板 -阵法倍率记分板
#蚀骨刺倍率%
scoreboard players set zf_mp_metal percent 250
#蚀骨穿心箭基础倍率%
scoreboard players set zf_mp_refined_metal percent 500
#蚀骨穿心箭百分比提升%
scoreboard players set zf_mp_refined_metal_add percent 100
#蚀骨穿心箭追加条件-血量百分比%
scoreboard players set zf_refined_metal_healthstg percent 50
#蚀骨旋风倍率%
scoreboard players set zf_mp_again_refined_metal percent 600



scoreboard objectives add loop dummy

function pld:system/zf/shifang/main/refined/wood/load
function pld:system/zf/shifang/main/refined/fire/load
function pld:system/zf/shifang/main/refined/earth/load