#同步伤害值 weapon_skill_bow6_sun_2damage
#(weapon_skill_bow6_sun_multiplier_base + weapon_skill_bow6_sun_multiplier * 玩家当前层数 )* 玩家当前箭矢强度
scoreboard players operation @s weapon_skill_bow6_sun_2damage = @p[tag=sun_owner] weapon_skill_bow6_lvl
scoreboard players operation @s weapon_skill_bow6_sun_2damage *= #system weapon_skill_bow6_sun_multiplier
scoreboard players operation @s weapon_skill_bow6_sun_2damage += #system weapon_skill_bow6_sun_multiplier_base
scoreboard players operation @s weapon_skill_bow6_sun_2damage *= @p[tag=sun_owner] archer_damage
scoreboard players operation @s weapon_skill_bow6_sun_2damage /= 10 int
