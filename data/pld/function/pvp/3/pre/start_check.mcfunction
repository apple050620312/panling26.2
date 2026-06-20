#战役开始结算
#统计双方玩家数量
execute store result score #system pvp_atk_count run execute if entity @a[scores={pvp_team=5}]
execute store result score #system pvp_def_count run execute if entity @a[scores={pvp_team=6}]

#进攻人数不足，进攻方战役失败
execute unless score #system pvp_atk_count matches 3.. run function pld:pvp/3/pre/failed_atk_not_enough

#进攻方人数足够但是防守方不足，防守方战役失败
execute if score #system pvp_atk_count matches 3.. unless score #system pvp_def_count matches 3.. run function pld:pvp/3/pre/failed_def_not_enough

#人数达标，战役开启
execute if score #system pvp_atk_count matches 3.. if score #system pvp_def_count matches 3.. run function pld:pvp/3/pre/start

