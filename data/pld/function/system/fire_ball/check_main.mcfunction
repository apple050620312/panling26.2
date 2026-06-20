execute store result score @s monster_uuid_0 run data get entity @s UUID[0]
execute if score @s monster_uuid_0 = @e[limit=1,tag=fireball_check,type=small_fireball] projectile_owner_uuid0 run scoreboard players set @e[limit=1,tag=fireball_check,type=small_fireball] success 1
#tellraw yl_jiu_qiu {"score":{"name": "@e[limit=1,tag=fireball_check,type=small_fireball]","objective": "projectile_owner_uuid0"}}
#tellraw yl_jiu_qiu {"score":{"name": "@s","objective": "monster_uuid_0"}}
