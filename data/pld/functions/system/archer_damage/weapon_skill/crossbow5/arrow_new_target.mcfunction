#检查附近10格内的怪物

tag @e[tag=monster,distance=..10,limit=1,sort=nearest] add star_arrow_target

#将目标的uuid[0] 存入箭中
scoreboard players operation @s weapon_skill_crossbow5_arrow_target = @e[tag=monster,limit=1,tag=star_arrow_target] monster_uuid_0