#一位小数
scoreboard objectives add archer_damage dummy ["弓箭手箭矢强度*10"]
scoreboard objectives add archer_damage_should dummy ["弓箭手应当的箭矢强度*10"]
scoreboard objectives add bow_used minecraft.used:minecraft.bow ["使用弓"]

scoreboard objectives add archer_damage1_enchanted dummy ["玩家当前弓箭附灵箭矢强度"]
scoreboard objectives add archer_damage_effect dummy ["力量效果提供的箭矢强度"]
scoreboard objectives add archer_damage_effect_weak dummy ["力量效果提供的箭矢强度"]

scoreboard objectives add weaponlock_lock dummy ["武器激活锁"]
scoreboard objectives add armorlock_lock dummy ["护甲激活锁"]

scoreboard objectives add archer_damage_middle dummy ["力量计算中间值"]
scoreboard objectives add archer_damage_l6 dummy ["箭矢强度增幅-神器"]

scoreboard objectives add projectile_owner_uuid0 dummy ["弹射物发射者uuid第一位"]
scoreboard objectives add projectile_owner_uuid1 dummy ["弹射物发射者uuid第二位"]
scoreboard objectives add projectile_owner_uuid2 dummy ["弹射物发射者uuid第三位"]
scoreboard objectives add projectile_owner_uuid3 dummy ["弹射物发射者uuid第四位"]

scoreboard objectives add getted_owner_uuid dummy ["弹射物已获得owner的uuid记分板"]
scoreboard objectives add getted_uuid dummy ["实体已获得自己的uuid记分板"]

scoreboard objectives add marker_owner_uuid0 dummy ["标记拥有者uuid第一位"]
scoreboard objectives add projectile_uuid0 dummy ["弹射物uuid第一位"]