#第一步：设定发射者，并根据uuid 追踪到所有本次射击射出的箭矢
#发射者uuid
execute store result score @s player_uuid0 run data get entity @s UUID[0]
execute store result score @s player_uuid1 run data get entity @s UUID[1]
execute store result score @s player_uuid2 run data get entity @s UUID[2]
execute store result score @s player_uuid3 run data get entity @s UUID[3]
#
#为附近的箭附加uuid
execute at @s as @e[type=arrow,nbt={OnGround:0b},distance=..5] store result score @s projectile_owner_uuid0 run data get entity @s Owner[0]
execute at @s as @e[type=arrow,nbt={OnGround:0b},distance=..5] store result score @s projectile_owner_uuid1 run data get entity @s Owner[1]
execute at @s as @e[type=arrow,nbt={OnGround:0b},distance=..5] store result score @s projectile_owner_uuid2 run data get entity @s Owner[2]
execute at @s as @e[type=arrow,nbt={OnGround:0b},distance=..5] store result score @s projectile_owner_uuid3 run data get entity @s Owner[3]

#tag发射者
tag @s add shooter

#覆盖箭矢的damage 与 取消弩箭的暴击tag
#execute at @s as @e[type=arrow,nbt={inGround:0b},distance=..5] if score @s projectile_owner_uuid0 = @p[tag=shooter] player_uuid0 if score @s projectile_owner_uuid1 = @p[tag=shooter] player_uuid1 if score @s projectile_owner_uuid2 = @p[tag=shooter] player_uuid2 if score @s projectile_owner_uuid3 = @p[tag=shooter] player_uuid3 run function pld:system/archer_damage/shoot/set_damage
execute at @s as @e[type=arrow,nbt={inGround:0b},distance=..5] run function pld:system/archer_damage/shoot/get_the_arrow

#接口
function #pld:archer/when_shoot

tag @s remove shooter

